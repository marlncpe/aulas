<style>
	#img{
		height: 200px;
		width: 100%;
		position: relative;
		top:0px;
		left: 0px;
	}
</style>
<img id="img" src="http://www.edudigital.unellez.edu.ve/images/banners//header_top5.png">
<br />
<p align="center">Solicitud de Aula Virtual</p>
<table>
	<tr>
		<td>Codigo Solicitud: {{ solicitud.id }}</td>
	</tr>
	<tr>
		<td>Cedula: {{ solicitud.usuarios.cedula }}</td>
	</tr>
	<tr>	
		<td>Nombres: {{ solicitud.usuarios.nombres }}</td>
	</tr>
	<tr>	
		<td>Apellidos: {{ solicitud.usuarios.nombres }}</td>
	</tr>
	<tr>	
		<td>ViceRectorado: {{ solicitud.usuarios.vpds.nombre }}</td>
	</tr>
	<tr>	
		<td>Materia: {{ solicitud.materia.nombre }}</td>
	</tr>
	<tr>	
		<td>Cantidad de Alumnos: {{ solicitud.catnAlumnos }}</td>
	</tr>
	<tr>	
		<td>Estado de la Solicitud: {{ solicitud.estado.nombre }}</td>
	</tr>
	<tr>	
		<td>Fecha Creacion: {{ solicitud.fechaCreacion }}</td>
	</tr>
</table>
<!--<table class="table">
                                <thead>
                                    <tr>
                                        <th>Id: </th>
                                        <th>Periodo</th>
                                        <th>Materia</th>
                                        <th>Nombre Usuario</th>
                                        <th>status</th>
                                        <th># de Alumnos</th>
                                        <th>Fecha de Inicio</th>
                                        <th>Fecha de Fin</th>
                                        <th>Fecha de Creacion</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {% if page.items is defined %}
                                    {% for aula in page.items %}
                                        {% if aula.estado.nombre == "activo" %}
                                            <tr class="info">
                                        {% elseif aula.estado.nombre == "inactivo" %}
                                            <tr class="danger">
                                        {% elseif aula.estado.nombre == "espera" %}
                                            <tr class="active">
                                        {% endif %}
                                            <td>{{ aula.getId() }}</td>
                                            <td>{{ aula.periodo.nombre }}</td>
                                            <td>{{ aula.materia.nombre }}</td>
                                            <td>{{ aula.usuarios.nombres }}</td>
                                            <td>{{ aula.estado.nombre }}</td>
                                            <td>{{ aula.getCatnAlumnos() }}</td>
                                            <td>{{ aula.getFechaInicio() }}</td>
                                            <td>{{ aula.getFechaFin() }}</td>
                                            <td>{{ aula.getFechaCreacion() }}</td>
                                           
                                        </tr>
                                    {% endfor %}
                                    {% endif %}

                                </tbody>
                                
                            </table>-->