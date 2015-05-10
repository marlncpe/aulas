{{ content() }}
{{ form("aulas/save", "method":"post") }}

<table width="100%">
    <tr>
        <td align="left">{{ link_to("aulas", "Go Back") }}</td>
        <td align="right">{{ submit_button("Save") }}</td>
    </tr>
</table>

<div align="center">
    <h1>Edit aulas</h1>
</div>

<table>
    <tr>
        <td align="right">
            <label for="id_periodo">Id Of Periodo</label>
        </td>
        <td align="left">
            {{ text_field("id_periodo", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="id_materia">Id Of Materia</label>
        </td>
        <td align="left">
            {{ text_field("id_materia", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="id_usuario">Id Of Usuario</label>
        </td>
        <td align="left">
            {{ text_field("id_usuario", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="id_estado">Id Of Estado</label>
        </td>
        <td align="left">
            {{ text_field("id_estado", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="catn_alumnos">Catn Of Alumnos</label>
        </td>
        <td align="left">
            {{ text_field("catn_alumnos", "type" : "numeric") }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="url_academica">Url Of Academica</label>
        </td>
        <td align="left">
            {{ text_field("url_academica", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="url_programatico">Url Of Programatico</label>
        </td>
        <td align="left">
            {{ text_field("url_programatico", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="url_actividades">Url Of Actividades</label>
        </td>
        <td align="left">
            {{ text_field("url_actividades", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha_inicio">Fecha Of Inicio</label>
        </td>
        <td align="left">
            {{ text_field("fecha_inicio", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha_fin">Fecha Of Fin</label>
        </td>
        <td align="left">
            {{ text_field("fecha_fin", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha_creacion">Fecha Of Creacion</label>
        </td>
        <td align="left">
            {{ text_field("fecha_creacion", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha_modificacion">Fecha Of Modificacion</label>
        </td>
        <td align="left">
            {{ text_field("fecha_modificacion", "size" : 30) }}
        </td>
    </tr>

    <tr>
        <td>{{ hidden_field("id") }}</td>
        <td>{{ submit_button("Save") }}</td>
    </tr>
</table>

</form>
