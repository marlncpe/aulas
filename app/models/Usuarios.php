<?php

class Usuarios extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    protected $id;

    /**
     *
     * @var string
     */
    protected $cedula;

    /**
     *
     * @var string
     */
    protected $nombres;

    /**
     *
     * @var string
     */
    protected $apellidos;

    /**
     *
     * @var integer
     */
    protected $id_vpds;

    /**
     *
     * @var integer
     */
    protected $id_permiso;

    /**
     *
     * @var string
     */
    protected $nomb_usuario;

    /**
     *
     * @var string
     */
    protected $contraseña;

    /**
     *
     * @var string
     */
    protected $correo;

    /**
     *
     * @var string
     */
    protected $telefono;

    /**
     *
     * @var string
     */
    protected $fecha_creacion;

    /**
     *
     * @var string
     */
    protected $fecha_modificacion;

    /**
     *
     * @var integer
     */
    protected $id_estado;

    /**
     * Method to set the value of field id
     *
     * @param integer $id
     * @return $this
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Method to set the value of field cedula
     *
     * @param string $cedula
     * @return $this
     */
    public function setCedula($cedula)
    {
        $this->cedula = $cedula;

        return $this;
    }

    /**
     * Method to set the value of field nombres
     *
     * @param string $nombres
     * @return $this
     */
    public function setNombres($nombres)
    {
        $this->nombres = $nombres;

        return $this;
    }

    /**
     * Method to set the value of field apellidos
     *
     * @param string $apellidos
     * @return $this
     */
    public function setApellidos($apellidos)
    {
        $this->apellidos = $apellidos;

        return $this;
    }

    /**
     * Method to set the value of field id_vpds
     *
     * @param integer $id_vpds
     * @return $this
     */
    public function setIdVpds($id_vpds)
    {
        $this->id_vpds = $id_vpds;

        return $this;
    }

    /**
     * Method to set the value of field id_permiso
     *
     * @param integer $id_permiso
     * @return $this
     */
    public function setIdPermiso($id_permiso)
    {
        $this->id_permiso = $id_permiso;

        return $this;
    }

    /**
     * Method to set the value of field nomb_usuario
     *
     * @param string $nomb_usuario
     * @return $this
     */
    public function setNombUsuario($nomb_usuario)
    {
        $this->nomb_usuario = $nomb_usuario;

        return $this;
    }

    /**
     * Method to set the value of field contraseña
     *
     * @param string $contraseña
     * @return $this
     */
    public function setContraseña($contraseña)
    {
        $this->contraseña = $contraseña;

        return $this;
    }

    /**
     * Method to set the value of field correo
     *
     * @param string $correo
     * @return $this
     */
    public function setCorreo($correo)
    {
        $this->correo = $correo;

        return $this;
    }

    /**
     * Method to set the value of field telefono
     *
     * @param string $telefono
     * @return $this
     */
    public function setTelefono($telefono)
    {
        $this->telefono = $telefono;

        return $this;
    }

    /**
     * Method to set the value of field fecha_creacion
     *
     * @param string $fecha_creacion
     * @return $this
     */
    public function setFechaCreacion($fecha_creacion)
    {
        $this->fecha_creacion = $fecha_creacion;

        return $this;
    }

    /**
     * Method to set the value of field fecha_modificacion
     *
     * @param string $fecha_modificacion
     * @return $this
     */
    public function setFechaModificacion($fecha_modificacion)
    {
        $this->fecha_modificacion = $fecha_modificacion;

        return $this;
    }

    /**
     * Method to set the value of field id_estado
     *
     * @param integer $id_estado
     * @return $this
     */
    public function setIdEstado($id_estado)
    {
        $this->id_estado = $id_estado;

        return $this;
    }

    /**
     * Returns the value of field id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Returns the value of field cedula
     *
     * @return string
     */
    public function getCedula()
    {
        return $this->cedula;
    }

    /**
     * Returns the value of field nombres
     *
     * @return string
     */
    public function getNombres()
    {
        return $this->nombres;
    }

    /**
     * Returns the value of field apellidos
     *
     * @return string
     */
    public function getApellidos()
    {
        return $this->apellidos;
    }

    /**
     * Returns the value of field id_vpds
     *
     * @return integer
     */
    public function getIdVpds()
    {
        return $this->id_vpds;
    }

    /**
     * Returns the value of field id_permiso
     *
     * @return integer
     */
    public function getIdPermiso()
    {
        return $this->id_permiso;
    }

    /**
     * Returns the value of field nomb_usuario
     *
     * @return string
     */
    public function getNombUsuario()
    {
        return $this->nomb_usuario;
    }

    /**
     * Returns the value of field contraseña
     *
     * @return string
     */
    public function getContraseña()
    {
        return $this->contraseña;
    }

    /**
     * Returns the value of field correo
     *
     * @return string
     */
    public function getCorreo()
    {
        return $this->correo;
    }

    /**
     * Returns the value of field telefono
     *
     * @return string
     */
    public function getTelefono()
    {
        return $this->telefono;
    }

    /**
     * Returns the value of field fecha_creacion
     *
     * @return string
     */
    public function getFechaCreacion()
    {
        return $this->fecha_creacion;
    }

    /**
     * Returns the value of field fecha_modificacion
     *
     * @return string
     */
    public function getFechaModificacion()
    {
        return $this->fecha_modificacion;
    }

    /**
     * Returns the value of field id_estado
     *
     * @return integer
     */
    public function getIdEstado()
    {
        return $this->id_estado;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->hasMany('id', 'Aulas', 'id_usuario', array('alias' => 'Aulas'));
        $this->hasMany('id', 'Bitacora', 'id_usuario', array('alias' => 'Bitacora'));
        $this->belongsTo('id_permiso', 'Permisos', 'id', array('alias' => 'Permisos'));
        $this->belongsTo('id_estado', 'Estado', 'id', array('alias' => 'Estado'));
        $this->belongsTo('id_vpds', 'Vpds', 'id', array('alias' => 'Vpds'));
        $this->hasMany('id', 'Aulas', 'id_usuario', NULL);
        $this->hasMany('id', 'Bitacora', 'id_usuario', NULL);
        $this->belongsTo('id_permiso', 'Permisos', 'id', array('foreignKey' => true));
        $this->belongsTo('id_estado', 'Estado', 'id', array('foreignKey' => true));
        $this->belongsTo('id_vpds', 'Vpds', 'id', array('foreignKey' => true));
    }

}
