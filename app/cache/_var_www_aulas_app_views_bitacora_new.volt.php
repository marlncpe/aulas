
<?php echo $this->tag->form(array('bitacora/create', 'method' => 'post')); ?>

<table width="100%">
    <tr>
        <td align="left"><?php echo $this->tag->linkTo(array('bitacora', 'Go Back')); ?></td>
        <td align="right"><?php echo $this->tag->submitButton(array('Save')); ?></td>
    </tr>
</table>

<?php echo $this->getContent(); ?>

<div align="center">
    <h1>Create bitacora</h1>
</div>

<table>
    <tr>
        <td align="right">
            <label for="id_usuario">Id Of Usuario</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('id_usuario', 'type' => 'numeric')); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="accion">Accion</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('accion', 'size' => 30)); ?>
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha">Fecha</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('fecha', 'size' => 30)); ?>
        </td>
    </tr>

    <tr>
        <td></td>
        <td><?php echo $this->tag->submitButton(array('Save')); ?></td>
    </tr>
</table>

</form>
