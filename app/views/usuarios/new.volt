
{{ form("usuarios/create", "method":"post") }}

<table width="100%">
    <tr>
        <td align="left">{{ link_to("usuarios", "Go Back") }}</td>
        <td align="right">{{ submit_button("Save") }}</td>
    </tr>
</table>

{{ content() }}

<div align="center">
    <h1>Create usuarios</h1>
</div>

<table>
    <tr>
        <td align="right">
            <label for="cedula">Cedula</label>
        </td>
        <td align="left">
            {{ text_field("cedula", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="nombres">Nombres</label>
        </td>
        <td align="left">
            {{ text_field("nombres", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="apellidos">Apellidos</label>
        </td>
        <td align="left">
            {{ text_field("apellidos", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="id_vpds">Id Of Vpds</label>
        </td>
        <td align="left">
            {{ text_field("id_vpds", "type" : "numeric") }}
        </td>
    </tr>
    <!--<tr>
        <td align="right">
            <label for="id_permiso">Id Of Permiso</label>
        </td>
        <td align="left">
            {{ text_field("id_permiso", "type" : "numeric") }}
        </td>
    </tr>-->
    <tr>
        <td align="right">
            <label for="nomb_usuario">Nomb Of Usuario</label>
        </td>
        <td align="left">
            {{ text_field("nomb_usuario", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="contraseña">Contraseña</label>
        </td>
        <td align="left">
            {{ text_field("clave", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="correo">Correo</label>
        </td>
        <td align="left">
            {{ text_field("correo", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="telefono">Telefono</label>
        </td>
        <td align="left">
            {{ text_field("telefono", "size" : 30) }}
        </td>
    </tr>
    <!--<tr>
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
        <td align="right">
            <label for="id_estado">Id Of Estado</label>
        </td>
        <td align="left">
            {{ text_field("id_estado", "type" : "numeric") }}
        </td>
    </tr>-->

    <tr>
        <td></td>
        <td>{{ submit_button("Save") }}</td>
    </tr>
</table>

</form>
