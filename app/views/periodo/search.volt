
{{ content() }}

<table width="100%">
    <tr>
        <td align="left">
            {{ link_to("periodo/index", "Go Back") }}
        </td>
        <td align="right">
            {{ link_to("periodo/new", "Create ") }}
        </td>
    </tr>
</table>

<table class="browse" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Nombre</th>
            <th>Descripcion</th>
            <th>Fecha Of Creacion</th>
            <th>Fecha Of Inicio</th>
            <th>Fecha Of Modificacion</th>
            <th>Fecha Of Fin</th>
         </tr>
    </thead>
    <tbody>
    {% if page.items is defined %}
    {% for periodo in page.items %}
        <tr>
            <td>{{ periodo.id }}</td>
            <td>{{ periodo.nombre }}</td>
            <td>{{ periodo.descripcion }}</td>
            <td>{{ periodo.fecha_creacion }}</td>
            <td>{{ periodo.fecha_inicio }}</td>
            <td>{{ periodo.fecha_modificacion }}</td>
            <td>{{ periodo.fecha_fin }}</td>
            <td>{{ link_to("periodo/edit/"~periodo.id, "Edit") }}</td>
            <td>{{ link_to("periodo/delete/"~periodo.id, "Delete") }}</td>
        </tr>
    {% endfor %}
    {% endif %}
    </tbody>
    <tbody>
        <tr>
            <td colspan="2" align="right">
                <table align="center">
                    <tr>
                        <td>{{ link_to("periodo/search", "First") }}</td>
                        <td>{{ link_to("periodo/search?page="~page.before, "Previous") }}</td>
                        <td>{{ link_to("periodo/search?page="~page.next, "Next") }}</td>
                        <td>{{ link_to("periodo/search?page="~page.last, "Last") }}</td>
                        <td>{{ page.current~"/"~page.total_pages }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </tbody>
</table>
