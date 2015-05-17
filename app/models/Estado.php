<?php

class Estado extends \Phalcon\Mvc\Model
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
    public $nombre;

    /**
     *
     * @var string
     */
    public $descripcion;

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
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->hasMany('id', 'Aulas', 'id_estado', array('alias' => 'Aulas'));
        $this->hasMany('id', 'Usuarios', 'id_estado', array('alias' => 'Usuarios'));
    }

    /**
     * Independent Column Mapping.
     */
    public function columnMap()
    {
        return array(
            'id' => 'id', 
            'nombre' => 'nombre', 
            'descripcion' => 'descripcion', 
            'fecha_creacion' => 'fecha_creacion', 
            'fecha_modificacion' => 'fecha_modificacion'
        );
    }

}
