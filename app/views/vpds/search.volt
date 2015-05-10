
{{ content() }}

<table width="100%">
    <tr>
        <td align="left">
            {{ link_to("vpds/index", "Go Back") }}
        </td>
        <td align="right">
            {{ link_to("vpds/new", "Create ") }}
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
    {% if page.items is defined %}
    {% for vpd in page.items %}
        <tr>
            <td>{{ vpd.id }}</td>
            <td>{{ vpd.nombre }}</td>
            <td>{{ vpd.estado }}</td>
            <td>{{ vpd.descripcion }}</td>
            <td>{{ vpd.fecha_creacion }}</td>
            <td>{{ vpd.fecha_modificacion }}</td>
            <td>{{ link_to("vpds/edit/"~vpd.id, "Edit") }}</td>
            <td>{{ link_to("vpds/delete/"~vpd.id, "Delete") }}</td>
        </tr>
    {% endfor %}
    {% endif %}
    </tbody>
    <tbody>
        <tr>
            <td colspan="2" align="right">
                <table align="center">
                    <tr>
                        <td>{{ link_to("vpds/search", "First") }}</td>
                        <td>{{ link_to("vpds/search?page="~page.before, "Previous") }}</td>
                        <td>{{ link_to("vpds/search?page="~page.next, "Next") }}</td>
                        <td>{{ link_to("vpds/search?page="~page.last, "Last") }}</td>
                        <td>{{ page.current~"/"~page.total_pages }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </tbody>
</table>
