
{{ content() }}

<div align="right">
    {{ link_to("aulas/new", "Crear aulas") }}
</div>

{{ form("aulas/search", "method":"post", "autocomplete" : "def") }}

<div align="center">
    <h1>Buscar aulas</h1>
</div>

<table>
    <tr>
        <td align="right">
            <label for="id">Id</label>
        </td>
        <td align="left">
            {{ text_field("id", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="id_periodo">Id de Periodo</label>
        </td>
        <td align="left">
            {{ text_field("id_periodo", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="id_materia">Id de Materia</label>
        </td>
        <td align="left">
            {{ text_field("id_materia", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="id_usuario">Id de Usuario</label>
        </td>
        <td align="left">
            {{ text_field("id_usuario", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="id_estado">Id de Estado</label>
        </td>
        <td align="left">
            {{ text_field("id_estado", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="catn_alumnos">Catn de Alumnos</label>
        </td>
        <td align="left">
            {{ text_field("catn_alumnos", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="url_academica">Url de Academica</label>
        </td>
        <td align="left">
            {{ text_field("url_academica", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="url_programatico">Url de Programatico</label>
        </td>
        <td align="left">
            {{ text_field("url_programatico", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="url_actividades">Url de Actividades</label>
        </td>
        <td align="left">
            {{ text_field("url_actividades", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha_inicio">Fecha de Inicio</label>
        </td>
        <td align="left">
            {{ text_field("fecha_inicio", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha_fin">Fecha de Fin</label>
        </td>
        <td align="left">
            {{ text_field("fecha_fin", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha_creacion">Fecha de Creacion</label>
        </td>
        <td align="left">
            {{ text_field("fecha_creacion", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha_modificacion">Fecha de Modificacion</label>
        </td>
        <td align="left">
            {{ text_field("fecha_modificacion", "size" : 30) }}
        </td>
    </tr>

    <tr>
        <td></td>
        <td>{{ submit_button("Buscar") }}</td>
    </tr>
</table>

</form>
