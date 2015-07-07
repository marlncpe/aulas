<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;

class PeriodoController extends ControllerBase
{

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }

    /**
     * Searches for periodo
     */
    public function searchAction()
    {

        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, "Periodo", $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = array();
        }
        $parameters["order"] = "id";

        $periodo = Periodo::find();
        if (count($periodo) == 0) {
            $this->flash->notice("La busqueda no encontro periodo, por favor cree uno");

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $paginator = new Paginator(array(
            "data" => $periodo,
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
     * Edits a periodo
     *
     * @param string $id
     */
    public function editAction($id)
    {

        if (!$this->request->isPost()) {

            $periodo = Periodo::findFirstByid($id);
            if (!$periodo) {
                $this->flash->error("El periodo a buscar no fue encontrado");

                return $this->dispatcher->forward(array(
                    "controller" => "aulas",
                    "action" => "searchSolicitud"
                ));
            }

            $this->view->id = $periodo->id;

            $this->tag->setDefault("id", $periodo->id);
            $this->tag->setDefault("nombre", $periodo->nombre);
            $this->tag->setDefault("descripcion", $periodo->descripcion);
            $this->tag->setDefault("fecha_creacion", $periodo->fecha_creacion);
            $this->tag->setDefault("fecha_inicio", $periodo->fecha_inicio);
            $this->tag->setDefault("fecha_modificacion", $periodo->fecha_modificacion);
            $this->tag->setDefault("fecha_fin", $periodo->fecha_fin);
            
        }
    }

    /**
     * Creates a new periodo
     */
    public function createAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $periodo = new Periodo();

        $periodo->nombre = $this->request->getPost("nombre");
        $periodo->descripcion = $this->request->getPost("descripcion");
        $periodo->fecha_creacion = date("d-m-Y");
        $periodo->fecha_inicio = $this->request->getPost("fecha_inicio");
        $periodo->fecha_modificacion = " ";
        $periodo->fecha_fin = $this->request->getPost("fecha_fin");
        

        if (!$periodo->save()) {
            foreach ($periodo->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "periodo",
                "action" => "new"
            ));
        }

        $this->flash->success("Periodo creado exitosamente");

        return $this->dispatcher->forward(array(
            "controller" => "periodo",
            "action" => "search"
        ));

    }

    /**
     * Saves a periodo edited
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

        $periodo = Periodo::findFirstByid($id);
        if (!$periodo) {
            $this->flash->error("Periodo no existe con este id: " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $periodo->nombre = $this->request->getPost("nombre");
        $periodo->descripcion = $this->request->getPost("descripcion");
        $periodo->fecha_creacion = $this->request->getPost("fecha_creacion");
        $periodo->fecha_inicio = $this->request->getPost("fecha_inicio");
        $periodo->fecha_modificacion = date("d-m-Y");
        $periodo->fecha_fin = $this->request->getPost("fecha_fin");
        

        if (!$periodo->save()) {

            foreach ($periodo->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "periodo",
                "action" => "edit",
                "params" => array($periodo->id)
            ));
        }

        $this->flash->success("Periodo actualizado con exito");

        return $this->dispatcher->forward(array(
            "controller" => "periodo",
            "action" => "search"
        ));

    }

    /**
     * Deletes a periodo
     *
     * @param string $id
     */
    public function deleteAction($id)
    {

        $periodo = Periodo::findFirstByid($id);
        if (!$periodo) {
            $this->flash->error("El periodo a buscar no fue encontrado");

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        if (!$periodo->delete()) {

            foreach ($periodo->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $this->flash->success("Periodo fue borrado con exito");

        return $this->dispatcher->forward(array(
            "controller" => "periodo",
            "action" => "search"
        ));
    }

}
