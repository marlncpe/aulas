<?php

class Aulas extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    protected $id;

    /**
     *
     * @var integer
     */
    protected $id_periodo;

    /**
     *
     * @var integer
     */
    protected $id_carrera;

    /**
     *
     * @var integer
     */
    protected $id_materia;

    /**
     *
     * @var integer
     */
    protected $id_usuario;

    /**
     *
     * @var integer
     */
    protected $id_estado;

    /**
     *
     * @var integer
     */
    protected $catn_alumnos;

    /**
     *
     * @var string
     */
    protected $url_academica;

    /**
     *
     * @var string
     */
    protected $url_programatico;

    /**
     *
     * @var string
     */
    protected $url_actividades;

    /**
     *
     * @var string
     */
    protected $fecha_inicio;

    /**
     *
     * @var string
     */
    protected $fecha_fin;

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
     * Method to set the value of field id_periodo
     *
     * @param integer $id_periodo
     * @return $this
     */
    public function setIdPeriodo($id_periodo)
    {
        $this->id_periodo = $id_periodo;

        return $this;
    }

    /**
     * Method to set the value of field id_carrera
     *
     * @param integer $id_carrera
     * @return $this
     */
    public function setIdCarrera($id_carrera)
    {
        $this->id_carrera = $id_carrera;

        return $this;
    }

    /**
     * Method to set the value of field id_materia
     *
     * @param integer $id_materia
     * @return $this
     */
    public function setIdMateria($id_materia)
    {
        $this->id_materia = $id_materia;

        return $this;
    }

    /**
     * Method to set the value of field id_usuario
     *
     * @param integer $id_usuario
     * @return $this
     */
    public function setIdUsuario($id_usuario)
    {
        $this->id_usuario = $id_usuario;

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
     * Method to set the value of field catn_alumnos
     *
     * @param integer $catn_alumnos
     * @return $this
     */
    public function setCatnAlumnos($catn_alumnos)
    {
        $this->catn_alumnos = $catn_alumnos;

        return $this;
    }

    /**
     * Method to set the value of field url_academica
     *
     * @param string $url_academica
     * @return $this
     */
    public function setUrlAcademica($url_academica)
    {
        $this->url_academica = $url_academica;

        return $this;
    }

    /**
     * Method to set the value of field url_programatico
     *
     * @param string $url_programatico
     * @return $this
     */
    public function setUrlProgramatico($url_programatico)
    {
        $this->url_programatico = $url_programatico;

        return $this;
    }

    /**
     * Method to set the value of field url_actividades
     *
     * @param string $url_actividades
     * @return $this
     */
    public function setUrlActividades($url_actividades)
    {
        $this->url_actividades = $url_actividades;

        return $this;
    }

    /**
     * Method to set the value of field fecha_inicio
     *
     * @param string $fecha_inicio
     * @return $this
     */
    public function setFechaInicio($fecha_inicio)
    {
        $this->fecha_inicio = $fecha_inicio;

        return $this;
    }

    /**
     * Method to set the value of field fecha_fin
     *
     * @param string $fecha_fin
     * @return $this
     */
    public function setFechaFin($fecha_fin)
    {
        $this->fecha_fin = $fecha_fin;

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
     * Returns the value of field id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Returns the value of field id_periodo
     *
     * @return integer
     */
    public function getIdPeriodo()
    {
        return $this->id_periodo;
    }

    /**
     * Returns the value of field id_carrera
     *
     * @return integer
     */
    public function getIdCarrera()
    {
        return $this->id_carrera;
    }

    /**
     * Returns the value of field id_materia
     *
     * @return integer
     */
    public function getIdMateria()
    {
        return $this->id_materia;
    }

    /**
     * Returns the value of field id_usuario
     *
     * @return integer
     */
    public function getIdUsuario()
    {
        return $this->id_usuario;
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
     * Returns the value of field catn_alumnos
     *
     * @return integer
     */
    public function getCatnAlumnos()
    {
        return $this->catn_alumnos;
    }

    /**
     * Returns the value of field url_academica
     *
     * @return string
     */
    public function getUrlAcademica()
    {
        return $this->url_academica;
    }

    /**
     * Returns the value of field url_programatico
     *
     * @return string
     */
    public function getUrlProgramatico()
    {
        return $this->url_programatico;
    }

    /**
     * Returns the value of field url_actividades
     *
     * @return string
     */
    public function getUrlActividades()
    {
        return $this->url_actividades;
    }

    /**
     * Returns the value of field fecha_inicio
     *
     * @return string
     */
    public function getFechaInicio()
    {
        return $this->fecha_inicio;
    }

    /**
     * Returns the value of field fecha_fin
     *
     * @return string
     */
    public function getFechaFin()
    {
        return $this->fecha_fin;
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
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->belongsTo('id_carrera', 'Carrera', 'id', array('alias' => 'Carrera'));
        $this->belongsTo('id_materia', 'Materia', 'id', array('alias' => 'Materia'));
        $this->belongsTo('id_estado', 'Estado', 'id', array('alias' => 'Estado'));
        $this->belongsTo('id_periodo', 'Periodo', 'id', array('alias' => 'Periodo'));
        $this->belongsTo('id_usuario', 'Usuarios', 'id', array('alias' => 'Usuarios'));
    }

}
