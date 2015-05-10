
{{ form("bitacora/create", "method":"post") }}

<table width="100%">
    <tr>
        <td align="left">{{ link_to("bitacora", "Go Back") }}</td>
        <td align="right">{{ submit_button("Save") }}</td>
    </tr>
</table>

{{ content() }}

<div align="center">
    <h1>Create bitacora</h1>
</div>

<table>
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
            <label for="accion">Accion</label>
        </td>
        <td align="left">
            {{ text_field("accion", "size" : 30) }}
        </td>
    </tr>
    <tr>
        <td align="right">
            <label for="fecha">Fecha</label>
        </td>
        <td align="left">
            {{ text_field("fecha", "size" : 30) }}
        </td>
    </tr>

    <tr>
        <td></td>
        <td>{{ submit_button("Save") }}</td>
    </tr>
</table>

</form>
