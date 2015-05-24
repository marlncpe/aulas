<?php

/**
 * SessionController
 *
 * Allows to authenticate users
 */
class SessionController extends ControllerBase
{

    public function indexAction()
    {
       
    }

    /**
     * Register an authenticated user into session data
     *
     * @param Users $user
     */
    private function _registerSession(Usuarios $user)
    {
        $this->session->set('auth', array(
            'id' => $user->id,
            'name' => $user->nombres
        ));
    }

    /**
     * This action authenticate and logs an user into the application
     *
     */
    public function startAction()
    {
        if ($this->request->isPost()) {

            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');

            $user = Usuarios::findFirst(array(
           	"(correo = :email: OR nomb_usuario = :email:) AND clave = :password: AND id_estado = '1'",
           	'bind' => array('email' => $email, 'password' => $password)// => sha1($password))
            ));

            if ($user != false) {
                $this->_registerSession($user);
                $this->flash->success('Bienvenido: ' . $user->nombres);
                return $this->dispatcher->forward(array(
                	"controller" => "aulas",
                	"action" => "index"
                ));
            }

            $this->flash->error('Wrong email/password');
        }

        return $this->forward('session/index');
    }

    /**
     * Finishes the active session redirecting to the index
     *
     * @return unknown
     */
    public function endAction()
    {
        $this->session->remove('auth');
        $this->flash->success('Adios!');
        return $this->forward('index/index');
    }
}
