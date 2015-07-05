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
<p align="center">Estadisticas</p>
<table>
	
    <tr>
		<td>Cantidad Total de Solicitudes: {{ solicitudTotal }}</td>
	</tr>
	<tr>
		<td>Cantidad de Solicitudes Atendidas: {{ solicitudAtendida }}</td>
	</tr>
	<tr>	
		<td>Cantidad de Solicitudes en Espera: {{ solicitudEspera }}</td>
	</tr>
	<tr>	
		<td>-----------------------------------</td>
	</tr>
	<tr>	
		<td>Cantidad de Alumnos que usaron las aulas: </td>
	</tr>
	
</table>
