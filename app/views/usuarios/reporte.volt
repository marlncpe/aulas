<!--<style>
	#img{
		height: 200px;
		width: 100%;
		position: relative;
		top:0px;
		left: 0px;
	}
</style>
<img id="img" src="http://www.edudigital.unellez.edu.ve/images/banners//header_top5.png">-->    
<br />
<p align="center">Todos los usuarios en el sistema</p>
                            <!--<table class="table">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Cedula</th>
                                        <th>Nombres</th>
                                        <th>Apellidos</th>
                                        <th>Permisologia</th>
                                        <th>status</th>
                                        <th>Fecha Registro</th>
                                    </tr>
                                </thead>
                                <tbody>

                                   
                                    {% for usuario in usuarios %}
                                       <tr class="info">
                                            <td>{{ usuario.id }}</td>
                                            <td>{{ usuario.cedula }}</td>
                                            <td>{{ usuario.nombres }}</td>
                                            <td>{{ usuario.apellidos }}</td>
                                            <td>{{ usuario.permisos.nombre }}</td>
                                            <td>{{ usuario.estado.nombre }}</td>
                                            <td>{{ usuario.getFechaCreacion() }}</td>
                                        </tr>
                                    {% endfor %}
                                    

                                </tbody>
                                
                            </table>-->