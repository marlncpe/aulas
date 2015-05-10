<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {

    }
    public function adminAction()
    {
    	//creamos la sesión para el administrador
    	$this->session->set("admin",true);
    	//creamos una sesión flash
    	$this->flash->success("La sesión de usuario administrador se ha creado correctamente");
    	return $this->dispatcher->forward(array(
            "action" => "index"
        ));
    }

    public function registeredAction()
    {
    	//creamos la sesión para el usuario registrado
    	$this->session->set("registered",true);
    	//creamos una sesión flash
    	$this->flash->success("La sesión de usuario registrado se ha creado correctamente");
    	return $this->dispatcher->forward(array(
            "action" => "index"
        ));
    }

    public function loginAction()
    {
    	echo "index loginAction";
    }

    public function registerAction()
    {
    	echo "index registerAction";
    }

    //eliminamos las sesiones
    public function endAction()
    {
        $this->session->destroy();
        //creamos una sesión flash
    	$this->flash->success("La sesión se ha eliminado correctamente");
        return $this->dispatcher->forward(array(
            "action" => "index"
        ));
    }
}

