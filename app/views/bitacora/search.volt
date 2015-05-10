
{{ content() }}

<table width="100%">
    <tr>
        <td align="left">
            {{ link_to("bitacora/index", "Go Back") }}
        </td>
        <td align="right">
            {{ link_to("bitacora/new", "Create ") }}
        </td>
    </tr>
</table>

<table class="browse" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Id Of Usuario</th>
            <th>Accion</th>
            <th>Fecha</th>
         </tr>
    </thead>
    <tbody>
    {% if page.items is defined %}
    {% for bitacora in page.items %}
        <tr>
            <td>{{ bitacora.getId() }}</td>
            <td>{{ bitacora.getIdUsuario() }}</td>
            <td>{{ bitacora.getAccion() }}</td>
            <td>{{ bitacora.getFecha() }}</td>
            <td>{{ link_to("bitacora/edit/"~bitacora.getId(), "Edit") }}</td>
            <td>{{ link_to("bitacora/delete/"~bitacora.getId(), "Delete") }}</td>
        </tr>
    {% endfor %}
    {% endif %}
    </tbody>
    <tbody>
        <tr>
            <td colspan="2" align="right">
                <table align="center">
                    <tr>
                        <td>{{ link_to("bitacora/search", "First") }}</td>
                        <td>{{ link_to("bitacora/search?page="~page.before, "Previous") }}</td>
                        <td>{{ link_to("bitacora/search?page="~page.next, "Next") }}</td>
                        <td>{{ link_to("bitacora/search?page="~page.last, "Last") }}</td>
                        <td>{{ page.current~"/"~page.total_pages }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </tbody>
</table>
