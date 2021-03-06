
{{ content() }}

<div align="right">
    {{ link_to("bitacora/new", "Create bitacora") }}
</div>

{{ form("bitacora/search", "method":"post", "autocomplete" : "def") }}

<div align="center">
    <h1>buscar bitacora</h1>
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
            <label for="id_usuario">Id de Usuario</label>
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
        <td>{{ submit_button("buscar") }}</td>
    </tr>
</table>

</form>
