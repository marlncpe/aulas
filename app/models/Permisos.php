<?php

class Permisos extends \Phalcon\Mvc\Model
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
        $this->hasMany('id', 'Usuarios', 'id_permiso', array('alias' => 'Usuarios'));
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
