
{{ content() }}

<table width="100%">
    <tr>
        <td align="left">
            {{ link_to("materia/index", "Go Back") }}
        </td>
        <td align="right">
            {{ link_to("materia/new", "Create ") }}
        </td>
    </tr>
</table>

<table class="browse" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Nombre</th>
            <th>Semestre</th>
            <th>Descripcion</th>
            <th>Fecha Of Creacion</th>
            <th>Fecha Of Modificacion</th>
         </tr>
    </thead>
    <tbody>
    {% if page.items is defined %}
    {% for materia in page.items %}
        <tr>
            <td>{{ materia.id }}</td>
            <td>{{ materia.nombre }}</td>
            <td>{{ materia.semestre }}</td>
            <td>{{ materia.descripcion }}</td>
            <td>{{ materia.fecha_creacion }}</td>
            <td>{{ materia.fecha_modificacion }}</td>
            <td>{{ link_to("materia/edit/"~materia.id, "Edit") }}</td>
            <td>{{ link_to("materia/delete/"~materia.id, "Delete") }}</td>
        </tr>
    {% endfor %}
    {% endif %}
    </tbody>
    <tbody>
        <tr>
            <td colspan="2" align="right">
                <table align="center">
                    <tr>
                        <td>{{ link_to("materia/search", "First") }}</td>
                        <td>{{ link_to("materia/search?page="~page.before, "Previous") }}</td>
                        <td>{{ link_to("materia/search?page="~page.next, "Next") }}</td>
                        <td>{{ link_to("materia/search?page="~page.last, "Last") }}</td>
                        <td>{{ page.current~"/"~page.total_pages }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </tbody>
</table>
