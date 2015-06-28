<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Mvc\View;
use Phalcon\Paginator\Adapter\Model as Paginator;

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
    *Search of Solicitud Action
    */
    public function searchSolicitudAction(){

        $aulasActivas = Aulas::find("id_estado=1");
        $aulasSinAsignar = Aulas::find("id_estado=6");
        $this->view->atendidas = $aulasActivas; 
        $this->view->pendientes = $aulasSinAsignar; 
    
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
     * Accept solicitud aula
     *
     * @param string $id
     */
    public function acceptsolicitudAction($id)
    {

        if (!$this->request->isPost()) {

            $aula = Aulas::findFirstByid($id);
            if (!$aula) {
                $this->flash->error("Solicitud no se encuentra");

                return $this->dispatcher->forward(array(
                    "controller" => "aulas",
                    "action" => "index"
                ));
            }

            $this->view->solicitud = $aula;
        }
    }

    /**
     * Creates a new aula
     */
    public function createAction()
    {
     
        $aula = new Aulas();

        $aula->setIdPeriodo("1");
        $aula->setIdCarrera($this->request->getPost("id_carrera"));
        $aula->setIdMateria($this->request->getPost("id_materia"));
        $aula->setIdUsuario($this->session->get('userid'));
        $aula->setIdEstado("6");
        $aula->setCatnAlumnos($this->request->getPost("catn_alumnos"));
        if($this->request->hasFiles() == true){
            $uploads = $this->request->getUploadedFiles();
            $isUploaded = false;
            foreach($uploads as $upload){

                $path = 'files/'.md5(uniqid(rand(), true)).'-'.$this->session->get('userid').'';//strtolower($upload->getname());
                ($upload->moveTo($path)) ? $isUploaded = true : $isUploaded = false;
                
                if($upload->getkey()=="url_academica"){
                    $aula->setUrlAcademica($path);
                }elseif($upload->getkey()=="url_programatico"){
                    $aula->setUrlProgramatico($path);
                }elseif($upload->getkey()=="url_actividades"){
                    $aula->setUrlActividades($path); 
                }
        
            }
        }else{
            die('You must choose at least one file to send. Please try again.');
        }
        $aula->setFechaInicio(" ");
        $aula->setFechaFin(" ");
        $aula->setFechaCreacion(date("d-m-Y"));
        $aula->setFechaModificacion(" ");
        
        

        if (!$aula->save()) {
            foreach ($aula->getMessages() as $message) {
                $this->flash->error($message);
            }
            $this->flash->success("La Solicitud no ha sido creada satifactoriamente");
        }else{

            $this->flash->success("La Solicitud ha sido creada satifactoriamente");

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
    public function updatesolicitudAction($id)
    {

        $aula = Aulas::findFirstByid($id);
        if (!$aula) {
            $this->flash->error("Solicitud no existe " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "index"
            ));
        }
        $aula->setIdEstado("1");
     
        if (!$aula->save()) {

            foreach ($aula->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "aula",
                "action" => "edit",
                "params" => array($aula->id)
            ));
        }
        $this->flash->success("Aula activada con exito");
        return $this->dispatcher->forward(array(
            "controller" => "aulas",
            "action" => "searchSolicitud"
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
    public function reporteAction($id){
        $solicitud = Aulas::findFirstByid($id);
        
        $this->view->disable();      
        $this->view->disableLevel(View::LEVEL_MAIN_LAYOUT);
        
        $html = $this->view->getRender("aulas", "reporte", array(
        "user" => $solicitud->id
        ));//'<html><body>'.'<p>test</p>'.'</body></html>';
        $dompdf = new domPdf();
        $dompdf->load_html($html);
        $dompdf->render();
        $dompdf->stream("prueba.pdf");
        
    }
}
