
{{ content() }}

<table width="100%">
    <tr>
        <td align="left">
            {{ link_to("aulas/index", "Go Back") }}
        </td>
        <td align="right">
            {{ link_to("aulas/new", "Create ") }}
        </td>
    </tr>
</table>

<table class="browse" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Id Of Periodo</th>
            <th>Id Of Materia</th>
            <th>Id Of Usuario</th>
            <th>Id Of Estado</th>
            <th>Catn Of Alumnos</th>
            <th>Url Of Academica</th>
            <th>Url Of Programatico</th>
            <th>Url Of Actividades</th>
            <th>Fecha Of Inicio</th>
            <th>Fecha Of Fin</th>
            <th>Fecha Of Creacion</th>
            <th>Fecha Of Modificacion</th>
         </tr>
    </thead>
    <tbody>
    {% if page.items is defined %}
    {% for aula in page.items %}
        <tr>
            <td>{{ aula.getId() }}</td>
            <td>{{ aula.getIdPeriodo() }}</td>
            <td>{{ aula.getIdMateria() }}</td>
            <td>{{ aula.getIdUsuario() }}</td>
            <td>{{ aula.getIdEstado() }}</td>
            <td>{{ aula.getCatnAlumnos() }}</td>
            <td>{{ aula.getUrlAcademica() }}</td>
            <td>{{ aula.getUrlProgramatico() }}</td>
            <td>{{ aula.getUrlActividades() }}</td>
            <td>{{ aula.getFechaInicio() }}</td>
            <td>{{ aula.getFechaFin() }}</td>
            <td>{{ aula.getFechaCreacion() }}</td>
            <td>{{ aula.getFechaModificacion() }}</td>
            <td>{{ link_to("aulas/edit/"~aula.getId(), "Edit") }}</td>
            <td>{{ link_to("aulas/delete/"~aula.getId(), "Delete") }}</td>
        </tr>
    {% endfor %}
    {% endif %}
    </tbody>
    <tbody>
        <tr>
            <td colspan="2" align="right">
                <table align="center">
                    <tr>
                        <td>{{ link_to("aulas/search", "First") }}</td>
                        <td>{{ link_to("aulas/search?page="~page.before, "Previous") }}</td>
                        <td>{{ link_to("aulas/search?page="~page.next, "Next") }}</td>
                        <td>{{ link_to("aulas/search?page="~page.last, "Last") }}</td>
                        <td>{{ page.current~"/"~page.total_pages }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </tbody>
</table>
