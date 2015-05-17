<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {

    }
    public function adminAction()
    {
    	//creamos la sesión para el administrador
    	echo $this->session->set("admin",true);
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
        if ($this->request->isPost()) {

            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');

            $user = Users::findFirst(array(
                "(email = :email: OR username = :email:) AND password = :password: AND active = 'Y'",
                'bind' => array('email' => $email, 'password' => sha1($password))
            ));
            if ($user != false) {
                $this->_registerSession($user);
                $this->flash->success('Welcome ' . $user->name);
                return $this->forward('invoices/index');
            }

            $this->flash->error('Wrong email/password');
        }

        return $this->forward('session/index');
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

