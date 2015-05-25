
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
            <th>Id de Periodo</th>
            <th>Id de Materia</th>
            <th>Id de Usuario</th>
            <th>Id de Estado</th>
            <th>Catn de Alumnos</th>
            <th>Url de Academica</th>
            <th>Url de Programatico</th>
            <th>Url de Actividades</th>
            <th>Fecha de Inicio</th>
            <th>Fecha de Fin</th>
            <th>Fecha de Creacion</th>
            <th>Fecha de Modificacion</th>
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
            <td>{{ link_to("aulas/edit/"~aula.getId(), "Editar") }}</td>
            <td>{{ link_to("aulas/delete/"~aula.getId(), "Borrar") }}</td>
        </tr>
    {% endfor %}
    {% endif %}
    </tbody>
    <tbody>
        <tr>
            <td colspan="2" align="right">
                <table align="center">
                    <tr>
                        <td>{{ link_to("aulas/search", "Primero") }}</td>
                        <td>{{ link_to("aulas/search?page="~page.before, "Antes") }}</td>
                        <td>{{ link_to("aulas/search?page="~page.next, "Sigiente") }}</td>
                        <td>{{ link_to("aulas/search?page="~page.last, "Anterior") }}</td>
                        <td>{{ page.current~"/"~page.total_pages }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </tbody>
</table>
