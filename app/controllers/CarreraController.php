<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;

class CarreraController extends ControllerBase
{

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;

    }

    /**
     * Searches for carrera
     */
    public function searchAction()
    {

        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, "Carrera", $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = array();
        }
        $parameters["order"] = "id";

        $carrera = Carrera::find();
        if (count($carrera) == 0) {
            $this->flash->notice("La busqueda no encontro carrera, por favor registre una");

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $paginator = new Paginator(array(
            "data" => $carrera,
            "limit"=> 10,
            "page" => $numberPage
        ));

        $this->view->page = $paginator->getPaginate();
    }

    /**
     * Displays the creation form
     */
    public function newAction()
    {

    }

    /**
     * Edits a carrera
     *
     * @param string $id
     */
    public function editAction($id)
    {

        if (!$this->request->isPost()) {

            $carrera = Carrera::findFirstByid($id);
            if (!$carrera) {
                $this->flash->error("Carrera no encontrada");

                return $this->dispatcher->forward(array(
                    "controller" => "aulas",
                    "action" => "searchSolicitud"
                ));
            }

            $this->view->id = $carrera->id;

            $this->tag->setDefault("id", $carrera->getId());
            $this->tag->setDefault("nombre", $carrera->getNombre());
            $this->tag->setDefault("descripcion", $carrera->getDescripcion());
            $this->tag->setDefault("fecha_creacion", $carrera->getFechaCreacion());
            
        }
    }

    /**
     * Creates a new carrera
     */
    public function createAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $carrera = new Carrera();

        $carrera->setNombre($this->request->getPost("nombre"));
        $carrera->setDescripcion($this->request->getPost("descripcion"));
        $carrera->setFechaCreacion(date("d-m-Y"));
        

        if (!$carrera->save()) {
            foreach ($carrera->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "carrera",
                "action" => "new"
            ));
        }

        $this->flash->success("Carrera creada con exito");

        return $this->dispatcher->forward(array(
            "controller" => "carrera",
            "action" => "search"
        ));

    }

    /**
     * Saves a carrera edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $id = $this->request->getPost("id");

        $carrera = Carrera::findFirstByid($id);
        if (!$carrera) {
            $this->flash->error("No existen carreras con este id: " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $carrera->setNombre($this->request->getPost("nombre"));
        $carrera->setDescripcion($this->request->getPost("descripcion"));
        $carrera->setFechaCreacion($this->request->getPost("fecha_creacion"));
        

        if (!$carrera->save()) {

            foreach ($carrera->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "carrera",
                "action" => "edit",
                "params" => array($carrera->id)
            ));
        }

        $this->flash->success("Carrera actualizada exitosamente");

        return $this->dispatcher->forward(array(
            "controller" => "carrera",
            "action" => "search"
        ));

    }

    /**
     * Deletes a carrera
     *
     * @param string $id
     */
    public function deleteAction($id)
    {

        $carrera = Carrera::findFirstByid($id);
        if (!$carrera) {
            $this->flash->error("Carrera no encontrada");

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        if (!$carrera->delete()) {

            foreach ($carrera->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $this->flash->success("La carrera se ha borrado exitosamente");

        return $this->dispatcher->forward(array(
            "controller" => "aulas",
            "action" => "searchSolicitud"
        ));
    }

}
