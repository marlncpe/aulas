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

        $carrera = Carrera::find($parameters);
        if (count($carrera) == 0) {
            $this->flash->notice("The search did not find any carrera");

            return $this->dispatcher->forward(array(
                "controller" => "carrera",
                "action" => "index"
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
                $this->flash->error("carrera was not found");

                return $this->dispatcher->forward(array(
                    "controller" => "carrera",
                    "action" => "index"
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
                "controller" => "carrera",
                "action" => "index"
            ));
        }

        $carrera = new Carrera();

        $carrera->setNombre($this->request->getPost("nombre"));
        $carrera->setDescripcion($this->request->getPost("descripcion"));
        $carrera->setFechaCreacion($this->request->getPost("fecha_creacion"));
        

        if (!$carrera->save()) {
            foreach ($carrera->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "carrera",
                "action" => "new"
            ));
        }

        $this->flash->success("carrera was created successfully");

        return $this->dispatcher->forward(array(
            "controller" => "carrera",
            "action" => "index"
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
                "controller" => "carrera",
                "action" => "index"
            ));
        }

        $id = $this->request->getPost("id");

        $carrera = Carrera::findFirstByid($id);
        if (!$carrera) {
            $this->flash->error("carrera does not exist " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "carrera",
                "action" => "index"
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

        $this->flash->success("carrera was updated successfully");

        return $this->dispatcher->forward(array(
            "controller" => "carrera",
            "action" => "index"
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
            $this->flash->error("carrera was not found");

            return $this->dispatcher->forward(array(
                "controller" => "carrera",
                "action" => "index"
            ));
        }

        if (!$carrera->delete()) {

            foreach ($carrera->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "carrera",
                "action" => "search"
            ));
        }

        $this->flash->success("carrera was deleted successfully");

        return $this->dispatcher->forward(array(
            "controller" => "carrera",
            "action" => "index"
        ));
    }

}
