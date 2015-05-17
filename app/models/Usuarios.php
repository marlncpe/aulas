<?php

class Usuarios extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var string
     */
    public $cedula;

    /**
     *
     * @var string
     */
    public $nombres;

    /**
     *
     * @var string
     */
    public $apellidos;

    /**
     *
     * @var integer
     */
    public $id_vpds;

    /**
     *
     * @var integer
     */
    public $id_permiso;

    /**
     *
     * @var string
     */
    public $nomb_usuario;

    /**
     *
     * @var string
     */
    public $contraseña;

    /**
     *
     * @var string
     */
    public $correo;

    /**
     *
     * @var string
     */
    public $telefono;

    /**
     *
     * @var string
     */
    public $fecha_creacion;

    /**
     *
     * @var string
     */
    public $fecha_modificacion;

    /**
     *
     * @var integer
     */
    public $id_estado;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {/*
        $this->hasMany('id', 'Aulas', 'id_usuario', array('alias' => 'Aulas'));
        $this->hasMany('id', 'Bitacora', 'id_usuario', array('alias' => 'Bitacora'));
        $this->belongsTo('id_vpds', 'Vpds', 'id', array('alias' => 'Vpds'));
        $this->belongsTo('id_permiso', 'Permisos', 'id', array('alias' => 'Permisos'));
        $this->belongsTo('id_estado', 'Estado', 'id', array('alias' => 'Estado'));*/
    }

    /**
     * Independent Column Mapping.
     */
    public function columnMap()
    {
        return array(
            'id' => 'id', 
            'cedula' => 'cedula', 
            'nombres' => 'nombres', 
            'apellidos' => 'apellidos', 
            'id_vpds' => 'id_vpds', 
            'id_permiso' => 'id_permiso', 
            'nomb_usuario' => 'nomb_usuario', 
            'contraseña' => 'contraseña', 
            'correo' => 'correo', 
            'telefono' => 'telefono', 
            'fecha_creacion' => 'fecha_creacion', 
            'fecha_modificacion' => 'fecha_modificacion', 
            'id_estado' => 'id_estado'
        );
    }

}
