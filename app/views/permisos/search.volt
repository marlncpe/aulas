
{{ content() }}

<table width="100%">
    <tr>
        <td align="left">
            {{ link_to("permisos/index", "Go Back") }}
        </td>
        <td align="right">
            {{ link_to("permisos/new", "Create ") }}
        </td>
    </tr>
</table>

<table class="browse" align="center">
    <thead>
        <tr>
            
            <th>Nombre</th>
            <th>Descripcion</th>
            <th>Fecha Of Creacion</th>
            <th>Fecha Of Modificacion</th>
         </tr>
    </thead>
    <tbody>
    {% if page.items is defined %}
    {% for permiso in page.items %}
        <tr>
           
            <td>{{ permiso.nombre }}</td>
            <td>{{ permiso.descripcion }}</td>
            <td>{{ permiso.fecha_creacion }}</td>
            <td>{{ permiso.fecha_modificacion }}</td>
            <td>{{ link_to("permisos/edit/"~permiso.id, "Edit") }}</td>
            <td>{{ link_to("permisos/delete/"~permiso.id, "Delete") }}</td>
        </tr>
    {% endfor %}
    {% endif %}
    </tbody>
    <tbody>
        <tr>
            <td colspan="2" align="right">
                <table align="center">
                    <tr>
                        <td>{{ link_to("permisos/search", "First") }}</td>
                        <td>{{ link_to("permisos/search?page="~page.before, "Previous") }}</td>
                        <td>{{ link_to("permisos/search?page="~page.next, "Next") }}</td>
                        <td>{{ link_to("permisos/search?page="~page.last, "Last") }}</td>
                        <td>{{ page.current~"/"~page.total_pages }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </tbody>
</table>
