
{{ content() }}

<table width="100%">
    <tr>
        <td align="left">
            {{ link_to("estado/index", "Go Back") }}
        </td>
        <td align="right">
            {{ link_to("estado/new", "Create ") }}
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
    {% for estado in page.items %}
        <tr>
            
            <td>{{ estado.nombre }}</td>
            <td>{{ estado.descripcion }}</td>
            <td>{{ estado.fecha_creacion }}</td>
            <td>{{ estado.fecha_modificacion }}</td>
            <td>{{ link_to("estado/edit/"~estado.id, "Edit") }}</td>
            <td>{{ link_to("estado/delete/"~estado.id, "Delete") }}</td>
        </tr>
    {% endfor %}
    {% endif %}
    </tbody>
    <tbody>
        <tr>
            <td colspan="2" align="right">
                <table align="center">
                    <tr>
                        <td>{{ link_to("estado/search", "First") }}</td>
                        <td>{{ link_to("estado/search?page="~page.before, "Previous") }}</td>
                        <td>{{ link_to("estado/search?page="~page.next, "Next") }}</td>
                        <td>{{ link_to("estado/search?page="~page.last, "Last") }}</td>
                        <td>{{ page.current~"/"~page.total_pages }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </tbody>
</table>
