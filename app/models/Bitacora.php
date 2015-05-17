<?php

class Bitacora extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var integer
     */
    public $id_usuario;

    /**
     *
     * @var string
     */
    public $accion;

    /**
     *
     * @var string
     */
    public $fecha;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->belongsTo('id_usuario', 'Usuarios', 'id', array('alias' => 'Usuarios'));
    }

    /**
     * Independent Column Mapping.
     */
    public function columnMap()
    {
        return array(
            'id' => 'id', 
            'id_usuario' => 'id_usuario', 
            'accion' => 'accion', 
            'fecha' => 'fecha'
        );
    }

}
