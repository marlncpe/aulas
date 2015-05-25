<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;

class BitacoraController extends ControllerBase
{

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }

    /**
     * Searches for bitacora
     */
    public function searchAction()
    {

        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, "Bitacora", $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = array();
        }
        $parameters["order"] = "id";

        $bitacora = Bitacora::find($parameters);
        if (count($bitacora) == 0) {
            $this->flash->notice("The search did not find any bitacora");

            return $this->dispatcher->forward(array(
                "controller" => "bitacora",
                "action" => "index"
            ));
        }

        $paginator = new Paginator(array(
            "data" => $bitacora,
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
     * Edits a bitacora
     *
     * @param string $id
     */
    public function editAction($id)
    {

        if (!$this->request->isPost()) {

            $bitacora = Bitacora::findFirstByid($id);
            if (!$bitacora) {
                $this->flash->error("bitacora was not found");

                return $this->dispatcher->forward(array(
                    "controller" => "bitacora",
                    "action" => "index"
                ));
            }

            $this->view->id = $bitacora->id;

            $this->tag->setDefault("id", $bitacora->getId());
            $this->tag->setDefault("id_usuario", $bitacora->getIdUsuario());
            $this->tag->setDefault("accion", $bitacora->getAccion());
            $this->tag->setDefault("fecha", $bitacora->getFecha());
            
        }
    }

    /**
     * Creates a new bitacora
     */
    public function createAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "bitacora",
                "action" => "index"
            ));
        }

        $bitacora = new Bitacora();

        $bitacora->setIdUsuario($this->request->getPost("id_usuario"));
        $bitacora->setAccion($this->request->getPost("accion"));
        $bitacora->setFecha($this->request->getPost("fecha"));
        

        if (!$bitacora->save()) {
            foreach ($bitacora->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "bitacora",
                "action" => "new"
            ));
        }

        $this->flash->success("bitacora was created successfully");

        return $this->dispatcher->forward(array(
            "controller" => "bitacora",
            "action" => "index"
        ));

    }

    /**
     * Saves a bitacora edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "bitacora",
                "action" => "index"
            ));
        }

        $id = $this->request->getPost("id");

        $bitacora = Bitacora::findFirstByid($id);
        if (!$bitacora) {
            $this->flash->error("bitacora does not exist " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "bitacora",
                "action" => "index"
            ));
        }

        $bitacora->setIdUsuario($this->request->getPost("id_usuario"));
        $bitacora->setAccion($this->request->getPost("accion"));
        $bitacora->setFecha($this->request->getPost("fecha"));
        

        if (!$bitacora->save()) {

            foreach ($bitacora->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "bitacora",
                "action" => "edit",
                "params" => array($bitacora->id)
            ));
        }

        $this->flash->success("bitacora was updated successfully");

        return $this->dispatcher->forward(array(
            "controller" => "bitacora",
            "action" => "index"
        ));

    }

    /**
     * Deletes a bitacora
     *
     * @param string $id
     */
    public function deleteAction($id)
    {

        $bitacora = Bitacora::findFirstByid($id);
        if (!$bitacora) {
            $this->flash->error("bitacora was not found");

            return $this->dispatcher->forward(array(
                "controller" => "bitacora",
                "action" => "index"
            ));
        }

        if (!$bitacora->delete()) {

            foreach ($bitacora->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "bitacora",
                "action" => "search"
            ));
        }

        $this->flash->success("bitacora was deleted successfully");

        return $this->dispatcher->forward(array(
            "controller" => "bitacora",
            "action" => "index"
        ));
    }

}
