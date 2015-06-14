<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;

class VpdsController extends ControllerBase
{

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }

    /**
     * Searches for vpds
     */
    public function searchAction()
    {

        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, "Vpds", $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = array();
        }
        $parameters["order"] = "id";

        $vpds = Vpds::find($parameters);
        if (count($vpds) == 0) {
            $this->flash->notice("The search did not find any vpds");

            return $this->dispatcher->forward(array(
                "controller" => "vpds",
                "action" => "index"
            ));
        }

        $paginator = new Paginator(array(
            "data" => $vpds,
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
     * Edits a vpd
     *
     * @param string $id
     */
    public function editAction($id)
    {

        if (!$this->request->isPost()) {

            $vpd = Vpds::findFirstByid($id);
            if (!$vpd) {
                $this->flash->error("vpd was not found");

                return $this->dispatcher->forward(array(
                    "controller" => "vpds",
                    "action" => "index"
                ));
            }

            $this->view->id = $vpd->id;

            $this->tag->setDefault("id", $vpd->id);
            $this->tag->setDefault("nombre", $vpd->nombre);
            $this->tag->setDefault("estado", $vpd->estado);
            $this->tag->setDefault("descripcion", $vpd->descripcion);
            $this->tag->setDefault("fecha_creacion", $vpd->fecha_creacion);
            $this->tag->setDefault("fecha_modificacion", $vpd->fecha_modificacion);
            
        }
    }

    /**
     * Creates a new vpd
     */
    public function createAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "vpds",
                "action" => "index"
            ));
        }

        $vpd = new Vpds();

        $vpd->nombre = $this->request->getPost("nombre");
        $vpd->estado = "1";
        $vpd->descripcion = $this->request->getPost("descripcion");
        $vpd->fecha_creacion = date("d-m-Y");
        $vpd->fecha_modificacion = " ";
        

        if (!$vpd->save()) {
            foreach ($vpd->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "vpds",
                "action" => "new"
            ));
        }

        $this->flash->success("vpd was created successfully");

        return $this->dispatcher->forward(array(
            "controller" => "vpds",
            "action" => "index"
        ));

    }

    /**
     * Saves a vpd edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "vpds",
                "action" => "index"
            ));
        }

        $id = $this->request->getPost("id");

        $vpd = Vpds::findFirstByid($id);
        if (!$vpd) {
            $this->flash->error("vpd does not exist " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "vpds",
                "action" => "index"
            ));
        }

        $vpd->nombre = $this->request->getPost("nombre");
        $vpd->estado = $this->request->getPost("estado");
        $vpd->descripcion = $this->request->getPost("descripcion");
        $vpd->fecha_creacion = $this->request->getPost("fecha_creacion");
        $vpd->fecha_modificacion = $this->request->getPost("fecha_modificacion");
        

        if (!$vpd->save()) {

            foreach ($vpd->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "vpds",
                "action" => "edit",
                "params" => array($vpd->id)
            ));
        }

        $this->flash->success("vpd was updated successfully");

        return $this->dispatcher->forward(array(
            "controller" => "vpds",
            "action" => "index"
        ));

    }

    /**
     * Deletes a vpd
     *
     * @param string $id
     */
    public function deleteAction($id)
    {

        $vpd = Vpds::findFirstByid($id);
        if (!$vpd) {
            $this->flash->error("vpd was not found");

            return $this->dispatcher->forward(array(
                "controller" => "vpds",
                "action" => "index"
            ));
        }

        if (!$vpd->delete()) {

            foreach ($vpd->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "vpds",
                "action" => "search"
            ));
        }

        $this->flash->success("vpd was deleted successfully");

        return $this->dispatcher->forward(array(
            "controller" => "vpds",
            "action" => "index"
        ));
    }

}
