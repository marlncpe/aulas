<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Aulas\Models\Materias;

class AulasController extends ControllerBase
{
    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;       
        $aulasActivas = Aulas::find("id_estado=1");
        $aulasSinAsignar = Aulas::find("id_estado=5");
        $this->view->aulasActivas = $aulasActivas; 
        $this->view->aulasSinAsignar = $aulasSinAsignar; 
    }
    /**
    *Profile of Aulas
    */
    public function profileAction($id){
        if($id == "" ){
            $this->flash->error("Error de busqueda por ID"); 
            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "index"
            ));
        }else{
            $aulaprofile = Aulas::findFirst("id='".$id."'");
            $this->view->aulaprofile = $aulaprofile;
        }

    }
    /**
    * Solicitud Action
    */
    public function solicitudAction(){
        
    }
    /**
    *Search of Solicitud Action
    */
    public function searchSolicitud(){

    }
    /**
    * Avanced search for aulas
    */
    public function avancedsearchAction()
    {

        if ($this->request->isPost()) {
            $this->profileAction($this->request->getPost("buscamateria"));
        }else{
            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "index"
            ));
        }
    }
    /**
     * Searches for aulas
     */
    public function searchAction()
    {

        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, "Aulas", $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = array();
        }
        $parameters["order"] = "id";

        $aulas = Aulas::find($parameters);
        if (count($aulas) == 0) {
            $this->flash->notice("La busqueda no devolvio resultados satifactorios");

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "index"
            ));
        }

        $paginator = new Paginator(array(
            "data" => $aulas,
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
     * Edits a aula
     *
     * @param string $id
     */
    public function editAction($id)
    {

        if (!$this->request->isPost()) {

            $aula = Aulas::findFirstByid($id);
            if (!$aula) {
                $this->flash->error("aula was not found");

                return $this->dispatcher->forward(array(
                    "controller" => "aulas",
                    "action" => "index"
                ));
            }

            $this->view->id = $aula->id;

            $this->tag->setDefault("id", $aula->getId());
            $this->tag->setDefault("id_periodo", $aula->getIdPeriodo());
            $this->tag->setDefault("id_materia", $aula->getIdMateria());
            $this->tag->setDefault("id_usuario", $aula->getIdUsuario());
            $this->tag->setDefault("id_estado", $aula->getIdEstado());
            $this->tag->setDefault("catn_alumnos", $aula->getCatnAlumnos());
            $this->tag->setDefault("url_academica", $aula->getUrlAcademica());
            $this->tag->setDefault("url_programatico", $aula->getUrlProgramatico());
            $this->tag->setDefault("url_actividades", $aula->getUrlActividades());
            $this->tag->setDefault("fecha_inicio", $aula->getFechaInicio());
            $this->tag->setDefault("fecha_fin", $aula->getFechaFin());
            $this->tag->setDefault("fecha_creacion", $aula->getFechaCreacion());
            $this->tag->setDefault("fecha_modificacion", $aula->getFechaModificacion());
            
        }
    }

    /**
     * Creates a new aula
     */
    public function createAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "index"
            ));
        }

        $aula = new Aulas();

        $aula->setIdPeriodo($this->request->getPost("id_periodo"));
        $aula->setIdMateria($this->request->getPost("id_materia"));
        $aula->setIdUsuario($this->request->getPost("id_usuario"));
        $aula->setIdEstado("6");
        $aula->setCatnAlumnos($this->request->getPost("catn_alumnos"));
        $aula->setUrlAcademica($this->request->getPost("url_academica"));
        $aula->setUrlProgramatico($this->request->getPost("url_programatico"));
        $aula->setUrlActividades($this->request->getPost("url_actividades"));
        $aula->setFechaInicio(" ");
        $aula->setFechaFin(" ");
        $aula->setFechaCreacion(date("d-m-Y"));
        $aula->setFechaModificacion(" ");
        


        if (!$aula->save()) {
            foreach ($aula->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->flash->success("El Aula no ha sido creado satifactoriamente");
        }else{

            $this->flash->success("El Aula ha sido creado satifactoriamente");

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "index"
            ));
        }
    }

    /**
     * Saves a aula edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "index"
            ));
        }

        $id = $this->request->getPost("id");

        $aula = Aulas::findFirstByid($id);
        if (!$aula) {
            $this->flash->error("aula does not exist " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "index"
            ));
        }

        $aula->setIdPeriodo($this->request->getPost("id_periodo"));
        $aula->setIdMateria($this->request->getPost("id_materia"));
        $aula->setIdUsuario($this->request->getPost("id_usuario"));
        $aula->setIdEstado($this->request->getPost("id_estado"));
        $aula->setCatnAlumnos($this->request->getPost("catn_alumnos"));
        $aula->setUrlAcademica($this->request->getPost("url_academica"));
        $aula->setUrlProgramatico($this->request->getPost("url_programatico"));
        $aula->setUrlActividades($this->request->getPost("url_actividades"));
        $aula->setFechaInicio($this->request->getPost("fecha_inicio"));
        $aula->setFechaFin($this->request->getPost("fecha_fin"));
        $aula->setFechaCreacion($this->request->getPost("fecha_creacion"));
        $aula->setFechaModificacion($this->request->getPost("fecha_modificacion"));
        

        if (!$aula->save()) {

            foreach ($aula->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "edit",
                "params" => array($aula->id)
            ));
        }

        $this->flash->success("aula was updated successfully");

        return $this->dispatcher->forward(array(
            "controller" => "aulas",
            "action" => "index"
        ));

    }

    /**
     * Deletes a aula
     *
     * @param string $id
     */
    public function deleteAction($id)
    {

        $aula = Aulas::findFirstByid($id);
        if (!$aula) {
            $this->flash->error("aula was not found");

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "index"
            ));
        }

        if (!$aula->delete()) {

            foreach ($aula->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "search"
            ));
        }

        $this->flash->success("aula was deleted successfully");

        return $this->dispatcher->forward(array(
            "controller" => "aulas",
            "action" => "index"
        ));
    }

}
