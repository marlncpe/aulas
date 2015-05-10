
{{ content() }}

<table width="100%">
    <tr>
        <td align="left">
            {{ link_to("usuarios/index", "Go Back") }}
        </td>
        <td align="right">
            {{ link_to("usuarios/new", "Create ") }}
        </td>
    </tr>
</table>

<table class="browse" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Cedula</th>
            <th>Nombres</th>
            <th>Apellidos</th>
            <th>Id Of Vpds</th>
            <th>Id Of Permiso</th>
            <th>Nomb Of Usuario</th>
            <th>Contraseña</th>
            <th>Correo</th>
            <th>Telefono</th>
            <th>Fecha Of Creacion</th>
            <th>Fecha Of Modificacion</th>
            <th>Id Of Estado</th>
         </tr>
    </thead>
    <tbody>
    {% if page.items is defined %}
    {% for usuario in page.items %}
        <tr>
            <td>{{ usuario.id }}</td>
            <td>{{ usuario.cedula }}</td>
            <td>{{ usuario.nombres }}</td>
            <td>{{ usuario.apellidos }}</td>
            <td>{{ usuario.id_vpds }}</td>
            <td>{{ usuario.id_permiso }}</td>
            <td>{{ usuario.nomb_usuario }}</td>
            <td>{{ usuario.contraseña }}</td>
            <td>{{ usuario.correo }}</td>
            <td>{{ usuario.telefono }}</td>
            <td>{{ usuario.fecha_creacion }}</td>
            <td>{{ usuario.fecha_modificacion }}</td>
            <td>{{ usuario.id_estado }}</td>
            <td>{{ link_to("usuarios/edit/"~usuario.id, "Edit") }}</td>
            <td>{{ link_to("usuarios/delete/"~usuario.id, "Delete") }}</td>
        </tr>
    {% endfor %}
    {% endif %}
    </tbody>
    <tbody>
        <tr>
            <td colspan="2" align="right">
                <table align="center">
                    <tr>
                        <td>{{ link_to("usuarios/search", "First") }}</td>
                        <td>{{ link_to("usuarios/search?page="~page.before, "Previous") }}</td>
                        <td>{{ link_to("usuarios/search?page="~page.next, "Next") }}</td>
                        <td>{{ link_to("usuarios/search?page="~page.last, "Last") }}</td>
                        <td>{{ page.current~"/"~page.total_pages }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </tbody>
</table>
