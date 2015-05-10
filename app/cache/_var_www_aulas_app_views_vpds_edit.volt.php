<?php echo $this->getContent(); ?>
<?php echo $this->tag->form(array('vpds/save', 'method' => 'post')); ?>

<table width="100%">
    <tr>
        <td align="left"><?php echo $this->tag->linkTo(array('vpds', 'Go Back')); ?></td>
        <td align="right"><?php echo $this->tag->submitButton(array('Save')); ?></td>
    </tr>
</table>

<div align="center">
    <h1>Edit vpds</h1>
</div>

<table>
    <tr>
        <td align="right">
            <label for="nombre">Nombre</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('nombre', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="estado">Estado</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('estado', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="descripcion">Descripcion</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('descripcion', 'size' => 30)); ?>
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
        <td><?php echo $this->tag->hiddenField(array('id')); ?></td>
        <td><?php echo $this->tag->submitButton(array('Save')); ?></td>
    </tr>
</table>

</form>
