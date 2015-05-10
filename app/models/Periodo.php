<?php

class Periodo extends \Phalcon\Mvc\Model
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
    public $fecha_inicio;

    /**
     *
     * @var string
     */
    public $fecha_modificacion;

    /**
     *
     * @var string
     */
    public $fecha_fin;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->hasMany('id', 'Aulas', 'id_periodo', array('alias' => 'Aulas'));
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
            'fecha_inicio' => 'fecha_inicio', 
            'fecha_modificacion' => 'fecha_modificacion', 
            'fecha_fin' => 'fecha_fin'
        );
    }

}
