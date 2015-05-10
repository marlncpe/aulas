<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;

class EstadoController extends ControllerBase
{

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }

    /**
     * Searches for estado
     */
    public function searchAction()
    {

        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, "Estado", $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = array();
        }
        $parameters["order"] = "id";

        $estado = Estado::find($parameters);
        if (count($estado) == 0) {
            $this->flash->notice("The search did not find any estado");

            return $this->dispatcher->forward(array(
                "controller" => "estado",
                "action" => "index"
            ));
        }

        $paginator = new Paginator(array(
            "data" => $estado,
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
     * Edits a estado
     *
     * @param string $id
     */
    public function editAction($id)
    {

        if (!$this->request->isPost()) {

            $estado = Estado::findFirstByid($id);
            if (!$estado) {
                $this->flash->error("estado was not found");

                return $this->dispatcher->forward(array(
                    "controller" => "estado",
                    "action" => "index"
                ));
            }

            $this->view->id = $estado->id;

            $this->tag->setDefault("id", $estado->id);
            $this->tag->setDefault("nombre", $estado->nombre);
            $this->tag->setDefault("descripcion", $estado->descripcion);
            $this->tag->setDefault("fecha_creacion", $estado->fecha_creacion);
            $this->tag->setDefault("fecha_modificacion", $estado->fecha_modificacion);
            
        }
    }

    /**
     * Creates a new estado
     */
    public function createAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "estado",
                "action" => "index"
            ));
        }

        $estado = new Estado();

        $estado->nombre = $this->request->getPost("nombre");
        $estado->descripcion = $this->request->getPost("descripcion");
        $estado->fecha_creacion = $this->request->getPost("fecha_creacion");
        $estado->fecha_modificacion = $this->request->getPost("fecha_modificacion");
        

        if (!$estado->save()) {
            foreach ($estado->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "estado",
                "action" => "new"
            ));
        }

        $this->flash->success("estado was created successfully");

        return $this->dispatcher->forward(array(
            "controller" => "estado",
            "action" => "index"
        ));

    }

    /**
     * Saves a estado edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "estado",
                "action" => "index"
            ));
        }

        $id = $this->request->getPost("id");

        $estado = Estado::findFirstByid($id);
        if (!$estado) {
            $this->flash->error("estado does not exist " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "estado",
                "action" => "index"
            ));
        }

        $estado->nombre = $this->request->getPost("nombre");
        $estado->descripcion = $this->request->getPost("descripcion");
        $estado->fecha_creacion = $this->request->getPost("fecha_creacion");
        $estado->fecha_modificacion = $this->request->getPost("fecha_modificacion");
        

        if (!$estado->save()) {

            foreach ($estado->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "estado",
                "action" => "edit",
                "params" => array($estado->id)
            ));
        }

        $this->flash->success("estado was updated successfully");

        return $this->dispatcher->forward(array(
            "controller" => "estado",
            "action" => "index"
        ));

    }

    /**
     * Deletes a estado
     *
     * @param string $id
     */
    public function deleteAction($id)
    {

        $estado = Estado::findFirstByid($id);
        if (!$estado) {
            $this->flash->error("estado was not found");

            return $this->dispatcher->forward(array(
                "controller" => "estado",
                "action" => "index"
            ));
        }

        if (!$estado->delete()) {

            foreach ($estado->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "estado",
                "action" => "search"
            ));
        }

        $this->flash->success("estado was deleted successfully");

        return $this->dispatcher->forward(array(
            "controller" => "estado",
            "action" => "index"
        ));
    }

}
