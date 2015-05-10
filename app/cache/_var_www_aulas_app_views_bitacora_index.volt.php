
<?php echo $this->getContent(); ?>

<div align="right">
    <?php echo $this->tag->linkTo(array('bitacora/new', 'Create bitacora')); ?>
</div>

<?php echo $this->tag->form(array('bitacora/search', 'method' => 'post', 'autocomplete' => 'off')); ?>

<div align="center">
    <h1>Search bitacora</h1>
</div>

<table>
    <tr>
        <td align="right">
            <label for="id">Id</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('id', 'type' => 'numeric')); ?>
        </td>
    </tr>
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
        <td><?php echo $this->tag->submitButton(array('Search')); ?></td>
    </tr>
</table>

</form>
