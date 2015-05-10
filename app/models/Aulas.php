<?php

class Aulas extends \Phalcon\Mvc\Model
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
    public $id_periodo;

    /**
     *
     * @var integer
     */
    public $id_materia;

    /**
     *
     * @var integer
     */
    public $id_usuario;

    /**
     *
     * @var integer
     */
    public $id_estado;

    /**
     *
     * @var integer
     */
    public $catn_alumnos;

    /**
     *
     * @var string
     */
    public $url_academica;

    /**
     *
     * @var string
     */
    public $url_programatico;

    /**
     *
     * @var string
     */
    public $url_actividades;

    /**
     *
     * @var string
     */
    public $fecha_inicio;

    /**
     *
     * @var string
     */
    public $fecha_fin;

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
        $this->belongsTo('id_usuario', 'Usuarios', 'id', array('alias' => 'Usuarios'));
        $this->belongsTo('id_materia', 'Materia', 'id', array('alias' => 'Materia'));
        $this->belongsTo('id_estado', 'Estado', 'id', array('alias' => 'Estado'));
        $this->belongsTo('id_periodo', 'Periodo', 'id', array('alias' => 'Periodo'));
    }

}
