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

        $usuarios = Usuarios::find($parameters);
        if (count($usuarios) == 0) {
            $this->flash->notice("The search did not find any usuarios");

            return $this->dispatcher->forward(array(
                "controller" => "usuarios",
                "action" => "index"
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
    public function editAction($id)
    {

        if (!$this->request->isPost()) {

            $usuario = Usuarios::findFirstByid($id);
            if (!$usuario) {
                $this->flash->error("usuario was not found");

                return $this->dispatcher->forward(array(
                    "controller" => "usuarios",
                    "action" => "index"
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
            $this->tag->setDefault("contraseña", $usuario->contraseña);
            $this->tag->setDefault("correo", $usuario->correo);
            $this->tag->setDefault("telefono", $usuario->telefono);
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
                "controller" => "usuarios",
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
        $usuario->contraseña = $this->request->getPost("contraseña");
        $usuario->correo = $this->request->getPost("correo");
        $usuario->telefono = $this->request->getPost("telefono");
        $usuario->fecha_creacion = date("d-m-Y");
        $usuario->fecha_modificacion = " ";
        $usuario->id_estado = "1";
        

        if (!$usuario->save()) {
            foreach ($usuario->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "index",
                "action" => "index"
            ));
        }

        $this->flash->success("usuario Fue creado Satifactoriamente");

        return $this->dispatcher->forward(array(
            "controller" => "usuarios",
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
                "controller" => "usuarios",
                "action" => "index"
            ));
        }

        $id = $this->request->getPost("id");

        $usuario = Usuarios::findFirstByid($id);
        if (!$usuario) {
            $this->flash->error("usuario does not exist " . $id);

            return $this->dispatcher->forward(array(
                "controller" => "usuarios",
                "action" => "index"
            ));
        }

        $usuario->cedula = $this->request->getPost("cedula");
        $usuario->nombres = $this->request->getPost("nombres");
        $usuario->apellidos = $this->request->getPost("apellidos");
        $usuario->id_vpds = $this->request->getPost("id_vpds");
        $usuario->id_permiso = $this->request->getPost("id_permiso");
        $usuario->nomb_usuario = $this->request->getPost("nomb_usuario");
        $usuario->contraseña = $this->request->getPost("contraseña");
        $usuario->correo = $this->request->getPost("correo");
        $usuario->telefono = $this->request->getPost("telefono");
        $usuario->fecha_creacion = $this->request->getPost("fecha_creacion");
        $usuario->fecha_modificacion = $this->request->getPost("fecha_modificacion");
        $usuario->id_estado = $this->request->getPost("id_estado");
        

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

        $this->flash->success("usuario was updated successfully");

        return $this->dispatcher->forward(array(
            "controller" => "usuarios",
            "action" => "index"
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
            $this->flash->error("usuario was not found");

            return $this->dispatcher->forward(array(
                "controller" => "usuarios",
                "action" => "index"
            ));
        }

        if (!$usuario->delete()) {

            foreach ($usuario->getMessages() as $message) {
                $this->flash->error($message);
            }

            return $this->dispatcher->forward(array(
                "controller" => "usuarios",
                "action" => "search"
            ));
        }

        $this->flash->success("usuario was deleted successfully");

        return $this->dispatcher->forward(array(
            "controller" => "usuarios",
            "action" => "index"
        ));
    }

}
