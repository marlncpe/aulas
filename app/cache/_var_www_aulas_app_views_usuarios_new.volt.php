
<?php echo $this->tag->form(array('usuarios/create', 'method' => 'post')); ?>

<table width="100%">
    <tr>
        <td align="left"><?php echo $this->tag->linkTo(array('usuarios', 'Go Back')); ?></td>
        <td align="right"><?php echo $this->tag->submitButton(array('Save')); ?></td>
    </tr>
</table>

<?php echo $this->getContent(); ?>

<div align="center">
    <h1>Create usuarios</h1>
</div>

<table>
    <tr>
        <td align="right">
            <label for="cedula">Cedula</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('cedula', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="nombres">Nombres</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('nombres', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="apellidos">Apellidos</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('apellidos', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="id_vpds">Id Of Vpds</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('id_vpds', 'type' => 'numeric')); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="id_permiso">Id Of Permiso</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('id_permiso', 'type' => 'numeric')); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="nomb_usuario">Nomb Of Usuario</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('nomb_usuario', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="contraseña">Contraseña</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('contraseña', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="correo">Correo</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('correo', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="telefono">Telefono</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('telefono', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha_creacion">Fecha Of Creacion</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('fecha_creacion', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha_modificacion">Fecha Of Modificacion</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('fecha_modificacion', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="id_estado">Id Of Estado</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('id_estado', 'type' => 'numeric')); ?>
        </td>
    </tr>

    <tr>
        <td></td>
        <td><?php echo $this->tag->submitButton(array('Save')); ?></td>
    </tr>
</table>

</form>
