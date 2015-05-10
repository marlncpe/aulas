
<?php echo $this->getContent(); ?>

<table width="100%">
    <tr>
        <td align="left">
            <?php echo $this->tag->linkTo(array('vpds/index', 'Go Back')); ?>
        </td>
        <td align="right">
            <?php echo $this->tag->linkTo(array('vpds/new', 'Create ')); ?>
        </td>
    </tr>
</table>

<table class="browse" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Nombre</th>
            <th>Estado</th>
            <th>Descripcion</th>
            <th>Fecha Of Creacion</th>
            <th>Fecha Of Modificacion</th>
         </tr>
    </thead>
    <tbody>
    <?php if (isset($page->items)) { ?>
    <?php foreach ($page->items as $vpd) { ?>
        <tr>
            <td><?php echo $vpd->id; ?></td>
            <td><?php echo $vpd->nombre; ?></td>
            <td><?php echo $vpd->estado; ?></td>
            <td><?php echo $vpd->descripcion; ?></td>
            <td><?php echo $vpd->fecha_creacion; ?></td>
            <td><?php echo $vpd->fecha_modificacion; ?></td>
            <td><?php echo $this->tag->linkTo(array('vpds/edit/' . $vpd->id, 'Edit')); ?></td>
            <td><?php echo $this->tag->linkTo(array('vpds/delete/' . $vpd->id, 'Delete')); ?></td>
        </tr>
    <?php } ?>
    <?php } ?>
    </tbody>
    <tbody>
        <tr>
            <td colspan="2" align="right">
                <table align="center">
                    <tr>
                        <td><?php echo $this->tag->linkTo(array('vpds/search', 'First')); ?></td>
                        <td><?php echo $this->tag->linkTo(array('vpds/search?page=' . $page->before, 'Previous')); ?></td>
                        <td><?php echo $this->tag->linkTo(array('vpds/search?page=' . $page->next, 'Next')); ?></td>
                        <td><?php echo $this->tag->linkTo(array('vpds/search?page=' . $page->last, 'Last')); ?></td>
                        <td><?php echo $page->current . '/' . $page->total_pages; ?></td>
                    </tr>
                </table>
            </td>
        </tr>
    </tbody>
</table>
