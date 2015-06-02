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
            'name' => $user->nombres,
            'estado' => $user->estado->nombre
        ));

        $this->session->set('userid',$user->id);
        $this->session->set('usernames',$user->nombres);
        $this->session->set('userlast',$user->apellidos);
         $this->session->set('userpicture',$user->foto);
        if($user->permisos->nombre == "superadmin"){
            $this->session->set('superadmin',true);
        }elseif($user->permisos->nombre == "admin"){
            $pru= $this->session->set('admin',true); 
        }elseif($user->permisos->nombre == "secretaria"){
            $this->session->set('secretaria',true);
        }elseif($user->permisos->nombre == "profesor") {
            $this->session->set('registered',true);
        }
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
                $this->flash->success('Bienvenido: ' . $user->apellidos. ", ".$user->nombres);
                return $this->dispatcher->forward(array(
                	"controller" => "aulas",
                	"action" => "index"
                ));
            }

            $this->flash->error('Usuario/Correo o clave incorrecta intente de nuevo');
            return $this->dispatcher->forward(array(
                "controller" => "index",
                "action" => "index"
            ));
        }

        return $this->forward('index/index');
    }

    /**
     * Finishes the active session redirecting to the index
     *
     * @return unknown
     */
    public function endAction()
    {
         $this->session->destroy();
        return $this->dispatcher->forward(array(
            "controller" => "index",
            "action" => "index"
        ));
    }
}
