<?php

class Bitacora extends \Phalcon\Mvc\Model
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
    protected $id_usuario;

    /**
     *
     * @var string
     */
    protected $accion;

    /**
     *
     * @var string
     */
    protected $fecha;

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
     * Method to set the value of field accion
     *
     * @param string $accion
     * @return $this
     */
    public function setAccion($accion)
    {
        $this->accion = $accion;

        return $this;
    }

    /**
     * Method to set the value of field fecha
     *
     * @param string $fecha
     * @return $this
     */
    public function setFecha($fecha)
    {
        $this->fecha = $fecha;

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
     * Returns the value of field id_usuario
     *
     * @return integer
     */
    public function getIdUsuario()
    {
        return $this->id_usuario;
    }

    /**
     * Returns the value of field accion
     *
     * @return string
     */
    public function getAccion()
    {
        return $this->accion;
    }

    /**
     * Returns the value of field fecha
     *
     * @return string
     */
    public function getFecha()
    {
        return $this->fecha;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->belongsTo('id_usuario', 'Usuarios', 'id', array('alias' => 'Usuarios'));
        $this->belongsTo('id_usuario', 'Usuarios', 'id', array('foreignKey' => true));
    }

}
