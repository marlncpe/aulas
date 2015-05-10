
<?php echo $this->getContent(); ?>

<div align="right">
    <?php echo $this->tag->linkTo(array('periodo/new', 'Create periodo')); ?>
</div>

<?php echo $this->tag->form(array('periodo/search', 'method' => 'post', 'autocomplete' => 'off')); ?>

<div align="center">
    <h1>Search periodo</h1>
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
            <label for="nombre">Nombre</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('nombre', 'size' => 30)); ?>
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
            <label for="fecha_inicio">Fecha Of Inicio</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('fecha_inicio', 'size' => 30)); ?>
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
            <label for="fecha_fin">Fecha Of Fin</label>
        </td>
        <td align="left">
            <?php echo $this->tag->textField(array('fecha_fin', 'size' => 30)); ?>
        </td>
    </tr>

    <tr>
        <td></td>
        <td><?php echo $this->tag->submitButton(array('Search')); ?></td>
    </tr>
</table>

</form>
