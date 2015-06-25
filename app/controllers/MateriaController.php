<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;

class MateriaController extends ControllerBase
{

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }

    /**
     * Searches for materia
     */
    public function searchAction()
    {

        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, "Materia", $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = array();
        }
        $parameters["order"] = "id";

        $materia = Materia::find($parameters);
        if (count($materia) == 0) {
            $this->flash->notice("The search did not find any materia");

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $paginator = new Paginator(array(
            "data" => $materia,
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
     * Edits a materia
     *
     * @param string $id
     */
    public function editAction($id)
    {

        if (!$this->request->isPost()) {

            $materia = Materia::findFirstByid($id);
            if (!$materia) {
                $this->flash->error("la materia no fue encontrada");

                return $this->dispatcher->forward(array(
                    "controller" => "aulas",
                    "action" => "searchSolicitud"
                ));
            }

            $this->view->id = $materia->id;

            $this->tag->setDefault("id", $materia->id);
            $this->tag->setDefault("nombre", $materia->nombre);
            $this->tag->setDefault("semestre", $materia->semestre);
            $this->tag->setDefault("descripcion", $materia->descripcion);
            $this->tag->setDefault("fecha_creacion", $materia->fecha_creacion);
            $this->tag->setDefault("fecha_modificacion", $materia->fecha_modificacion);
            
        }
    }

    /**
     * Creates a new materia
     */
    public function createAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $materia = new Materia();

        $materia->nombre = $this->request->getPost("nombre");
        $materia->semestre = $this->request->getPost("semestre");
        $materia->descripcion = $this->request->getPost("descripcion");
        $materia->fecha_creacion = date("d-m-Y");
        $materia->fecha_modificacion = " ";
        

        if (!$materia->save()) {
            foreach ($materia->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "materia",
                "action" => "new"
            ));
        }

        $this->flash->success("La materia ha sido creada satifactoriamente");

        return $this->dispatcher->forward(array(
            "controller" => "aulas",
            "action" => "searchSolicitud"
        ));

    }

    /**
     * Saves a materia edited
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

        $materia = Materia::findFirstByid($id);
        if (!$materia) {
            $this->flash->error("materia no existe " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "materia",
                "action" => "index"
            ));
        }

        $materia->nombre = $this->request->getPost("nombre");
        $materia->semestre = $this->request->getPost("semestre");
        $materia->descripcion = $this->request->getPost("descripcion");
        $materia->fecha_creacion = $this->request->getPost("fecha_creacion");
        $materia->fecha_modificacion = $this->request->getPost("fecha_modificacion");
        

        if (!$materia->save()) {

            foreach ($materia->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "materia",
                "action" => "edit",
                "params" => array($materia->id)
            ));
        }

        $this->flash->success("materia ha sido actualizada con exito");

        return $this->dispatcher->forward(array(
            "controller" => "aulas",
            "action" => "searchSolicitud"
        ));

    }

    /**
     * Deletes a materia
     *
     * @param string $id
     */
    public function deleteAction($id)
    {

        $materia = Materia::findFirstByid($id);
        if (!$materia) {
            $this->flash->error("materia no fue encontrada");

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        if (!$materia->delete()) {

            foreach ($materia->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $this->flash->success("materia fue borrada con exito");

        return $this->dispatcher->forward(array(
            "controller" => "aulas",
            "action" => "searchSolicitud"
        ));
    }

}
