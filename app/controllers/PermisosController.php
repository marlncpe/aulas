<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;

class PermisosController extends ControllerBase
{

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }

    /**
     * Searches for permisos
     */
    public function searchAction()
    {

        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, "Permisos", $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = array();
        }
        $parameters["order"] = "id";

        $permisos = Permisos::find($parameters);
        if (count($permisos) == 0) {
            $this->flash->notice("The search did not find any permisos");

            return $this->dispatcher->forward(array(
                "controller" => "permisos",
                "action" => "index"
            ));
        }

        $paginator = new Paginator(array(
            "data" => $permisos,
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
     * Edits a permiso
     *
     * @param string $id
     */
    public function editAction($id)
    {

        if (!$this->request->isPost()) {

            $permiso = Permisos::findFirstByid($id);
            if (!$permiso) {
                $this->flash->error("permiso was not found");

                return $this->dispatcher->forward(array(
                    "controller" => "permisos",
                    "action" => "index"
                ));
            }

            $this->view->id = $permiso->id;

            $this->tag->setDefault("id", $permiso->id);
            $this->tag->setDefault("nombre", $permiso->nombre);
            $this->tag->setDefault("descripcion", $permiso->descripcion);
            $this->tag->setDefault("fecha_creacion", $permiso->fecha_creacion);
            $this->tag->setDefault("fecha_modificacion", $permiso->fecha_modificacion);
            
        }
    }

    /**
     * Creates a new permiso
     */
    public function createAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "permisos",
                "action" => "index"
            ));
        }

        $permiso = new Permisos();

        $permiso->nombre = $this->request->getPost("nombre");
        $permiso->descripcion = $this->request->getPost("descripcion");
        $permiso->fecha_creacion = $this->request->getPost("fecha_creacion");
        $permiso->fecha_modificacion = $this->request->getPost("fecha_modificacion");
        

        if (!$permiso->save()) {
            foreach ($permiso->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "permisos",
                "action" => "new"
            ));
        }

        $this->flash->success("permiso was created successfully");

        return $this->dispatcher->forward(array(
            "controller" => "permisos",
            "action" => "index"
        ));

    }

    /**
     * Saves a permiso edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "permisos",
                "action" => "index"
            ));
        }

        $id = $this->request->getPost("id");

        $permiso = Permisos::findFirstByid($id);
        if (!$permiso) {
            $this->flash->error("permiso does not exist " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "permisos",
                "action" => "index"
            ));
        }

        $permiso->nombre = $this->request->getPost("nombre");
        $permiso->descripcion = $this->request->getPost("descripcion");
        $permiso->fecha_creacion = $this->request->getPost("fecha_creacion");
        $permiso->fecha_modificacion = $this->request->getPost("fecha_modificacion");
        

        if (!$permiso->save()) {

            foreach ($permiso->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "permisos",
                "action" => "edit",
                "params" => array($permiso->id)
            ));
        }

        $this->flash->success("permiso was updated successfully");

        return $this->dispatcher->forward(array(
            "controller" => "permisos",
            "action" => "index"
        ));

    }

    /**
     * Deletes a permiso
     *
     * @param string $id
     */
    public function deleteAction($id)
    {

        $permiso = Permisos::findFirstByid($id);
        if (!$permiso) {
            $this->flash->error("permiso was not found");

            return $this->dispatcher->forward(array(
                "controller" => "permisos",
                "action" => "index"
            ));
        }

        if (!$permiso->delete()) {

            foreach ($permiso->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "permisos",
                "action" => "search"
            ));
        }

        $this->flash->success("permiso was deleted successfully");

        return $this->dispatcher->forward(array(
            "controller" => "permisos",
            "action" => "index"
        ));
    }

}
