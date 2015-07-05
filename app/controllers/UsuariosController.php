<?php
 
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;

class UsuariosController extends ControllerBase
{

    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
    }
    /**
    * Profile for usuarios
    */
    public function profileAction($id){
        if($id == "" ){
            $this->flash->error("Error de busqueda por ID"); 
            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "index"
            ));
        }else{
            $userprofile = Usuarios::findFirst("id='".$id."'");
            $this->view->userprofile = $userprofile;
        }
    }
    /**
     * Searches for usuarios
     */
    public function searchAction()
    {

        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, "Usuarios", $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = array();
        }
        $parameters["order"] = "id";

        $usuarios = Usuarios::find('id_permiso=2');
        if (count($usuarios) == 0) {
            $this->flash->notice("La busqueda no encontro usuarios");

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $paginator = new Paginator(array(
            "data" => $usuarios,
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
     * Edits a usuario
     *
     * @param string $id
     */
    public function editAction()
    {
        $id =  $this->session->get('userid');
        if (!$this->request->isPost()) {

            $usuario = Usuarios::findFirstByid($id);
            if (!$usuario) {
                $this->flash->error("Usuario no encontrado");

                return $this->dispatcher->forward(array(
                    "controller" => "aulas",
                    "action" => "searchSolicitud"
                ));
            }

            $this->view->id = $usuario->id;

            $this->tag->setDefault("id", $usuario->id);
            $this->tag->setDefault("cedula", $usuario->cedula);
            $this->tag->setDefault("nombres", $usuario->nombres);
            $this->tag->setDefault("apellidos", $usuario->apellidos);
            $this->tag->setDefault("id_vpds", $usuario->id_vpds);
            $this->tag->setDefault("id_permiso", $usuario->id_permiso);
            $this->tag->setDefault("nomb_usuario", $usuario->nomb_usuario);
            $this->tag->setDefault("clave", $usuario->clave);
            $this->tag->setDefault("correo", $usuario->correo);
            $this->tag->setDefault("telefono", $usuario->telefono);
            $this->tag->setDefault("foto", $usuario->foto);
            $this->tag->setDefault("fecha_creacion", $usuario->fecha_creacion);
            $this->tag->setDefault("fecha_modificacion", $usuario->fecha_modificacion);
            $this->tag->setDefault("id_estado", $usuario->id_estado);
            
        }
    }

    /**
     * Creates a new usuario
     */
    public function createAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(array(
                "controller" => "index",
                "action" => "index"
            ));
        }

        $usuario = new Usuarios();

        $usuario->cedula = $this->request->getPost("cedula");
        $usuario->nombres = $this->request->getPost("nombres");
        $usuario->apellidos = $this->request->getPost("apellidos");
        $usuario->id_vpds = $this->request->getPost("id_vpds");
        $usuario->id_permiso = "4";
        $usuario->nomb_usuario = $this->request->getPost("nomb_usuario");
        $usuario->clave = $this->request->getPost("clave");
        $usuario->correo = $this->request->getPost("correo");
        $usuario->telefono = $this->request->getPost("telefono");
        $usuario->foto = ('img/usuario.png');
        $usuario->fecha_creacion = date("d-m-Y");
        $usuario->fecha_modificacion = " ";
        $usuario->id_estado = "1";
        

        if (!$usuario->save()) {
            foreach ($usuario->getMessages() as $message) {
                $this->flash->error($message);
            }

        /*    return $this->dispatcher->forward(array(
                "controller" => "index",
                "action" => "index"
            ));*/
        }
        
        $this->flash->success("Usuario creado con exito, ahora puede Inciar Sesión");
        
        return $this->dispatcher->forward(array(
            "controller" => "index",
            "action" => "index"
        ));
    }

    /**
     * Saves a usuario edited
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

        $usuario = Usuarios::findFirstByid($id);
        if (!$usuario) {
            $this->flash->error("No encontrado usuario con el siguiente id: " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "index"
            ));
        }

        $usuario->cedula = $this->request->getPost("cedula");
        $usuario->nombres = $this->request->getPost("nombres");
        $usuario->apellidos = $this->request->getPost("apellidos");
        $usuario->id_vpds = $usuario->getIdVpds();
        $usuario->id_permiso = $usuario->getIdPermiso();
        $usuario->nomb_usuario = $usuario->getNombUsuario();
        $usuario->clave = $usuario->getClave();
        $usuario->correo = $this->request->getPost("correo");
        $usuario->telefono = $this->request->getPost("telefono");
        if($this->request->hasFiles() == true){
            $uploads = $this->request->getUploadedFiles();
            $isUploaded = false;
            foreach($uploads as $upload){

                $path = 'img/'.md5(uniqid(rand(), true)).'-'.$this->session->get('userid').'';
                ($upload->moveTo($path)) ? $isUploaded = true : $isUploaded = false;
                
                //$usuario->foto = $usuario->setFoto($path);
                $usuario->setFoto($path);
            }
        }else{
            $usuario->foto = $usuario->getFoto();
        }
        $usuario->fecha_creacion = $usuario->getFechaCreacion();
        $usuario->fecha_modificacion = date("d-m-Y");
        $usuario->id_estado = $usuario->getIdEstado();
        

        if (!$usuario->save()) {

            foreach ($usuario->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "usuarios",
                "action" => "edit",
                "params" => array($usuario->id)
            ));
        }

        $this->flash->success("El usuario fue actualizado con exito");

        return $this->dispatcher->forward(array(
            "controller" => "usuarios",
            "action" => "profile",
            "params" => array($usuario->id)
        ));
        
    }

    /**
     * Deletes a usuario
     *
     * @param string $id
     */
    public function deleteAction($id)
    {

        $usuario = Usuarios::findFirstByid($id);
        if (!$usuario) {
            $this->flash->error("Usuario no encontrado");

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        if (!$usuario->delete()) {

            foreach ($usuario->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            ));
        }

        $this->flash->success("Usuario borrado con exito");

        return $this->dispatcher->forward(array(
            "controller" => "aulas",
            "action" => "searchSolicitud"
        ));
    }
    public function cradminAction(){
         if (!$this->request->isPost()) {
            
        }else{
            $usuario = new Usuarios();

            $usuario->cedula = $this->request->getPost("cedula");
            $usuario->nombres = $this->request->getPost("nombres");
            $usuario->apellidos = $this->request->getPost("apellidos");
            $usuario->id_vpds = $this->request->getPost("id_vpds");
            $usuario->id_permiso = "2";
            $usuario->nomb_usuario = $this->request->getPost("nomb_usuario");
            $usuario->clave = $this->request->getPost("clave");
            $usuario->correo = $this->request->getPost("correo");
            $usuario->telefono = $this->request->getPost("telefono");
            $usuario->fecha_creacion = date("d-m-Y");
            $usuario->fecha_modificacion = " ";
            $usuario->id_estado = "1";
            

            if (!$usuario->save()) {
                foreach ($usuario->getMessages() as $message) {
                    $this->flash->error($message);
                }
            }
            
            $this->flash->success("Usuario creado con exito");
            
            return $this->dispatcher->forward(array(
                "controller" => "aulas",
                "action" => "searchSolicitud"
            )); 
        }
    }
    public function reporteAction(){
        $this->view->usuarios = Usuarios::find("id_estado=4");
        
        $this->view->disable();      
        $this->view->disableLevel(View::LEVEL_MAIN_LAYOUT);
        
        $html = $this->view->getRender("usuarios", "reporte", array(
        "userid" => "dato"
        ));
        $dompdf = new domPdf();
        $dompdf->load_html($html);
        $dompdf->render();
        $dompdf->stream("usuariosSistema.pdf");
        
    }

}
