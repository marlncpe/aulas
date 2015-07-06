            <section id="content">
                <div class="container">
                   
                    <div class="col-sm-8">

                        <!-- Profile aula view -->
                        <div class="card profile-view">
                            <div class="pv-header">
                                <img src="img/profile-pics/profile-pic.jpg" class="pv-main" alt="">
                                {{ image('img/materia.jpg') }}
                            </div>
                            
                            <div class="pv-body">

                                <h2>{{aulaprofile.materia.nombre}}</h2>
                                <small>{{aulaprofile.materia.descripcion}}</small>
                            
                                <ul class="pv-contact">
                                    <li><i class="md md-event"></i>{{aulaprofile.fechainicio}}</li>
                                    <li><i class="md md-event"></i>{{aulaprofile.fechafin}}</li>
                                </ul>
                                
                                <ul class="pv-follow">
                                    <li>{{aulaprofile.periodo.nombre}} periodo</li>
                                    |
                                    <li>{{aulaprofile.catnalumnos}} Alumnos</li>
                                </ul>
                                {% if aulaprofile.usuarios.id == "" %}
                                <a href="" class="pv-follow-btn">Solicitar</a> 
                                {% elseif aulaprofile.estado.nombre == "Espera" %}
                                <a href="{{ url('aulas/reporte/') }}{{ aulaprofile.id }}" class="pv-follow-btn">Imprimir Solicitud</a>
                                {% else %}
                                <a href="" class="pv-follow-btn">Entrar</a>
                                {% endif %}
                            </div>
                        </div>
    
                    </div>
                    {% if aulaprofile.usuarios.id == "" %}
                    {% else %}
                    <div class="col-sm-4">
                        <!-- Profile teacher view -->
                        <div class="card profile-view">
                            <div class="pv-header">
                                {{ image(aulaprofile.usuarios.foto,"class":"pv-main") }}
                            </div>
                            
                            <div class="pv-body">
                                <h2>{{aulaprofile.usuarios.nombres}}, {{aulaprofile.usuarios.apellidos}}</h2>
                                <small>{{aulaprofile.usuarios.cedula}}</small>
                                <ul class="pv-contact">
                                    <li><i class="md md-phone"></i> {{aulaprofile.usuarios.telefono}}</li>
                                    <li><i class="md md-mail"></i> {{aulaprofile.usuarios.correo}}</li>
                                </ul>
                                
                                <ul class="pv-follow">
                                    <li>{{aulaprofile.usuarios.permisos.nombre}}</li>
                                    |
                                    <li>{{aulaprofile.usuarios.estado.nombre}}</li>
                                </ul>
                                
                            </div>
                        </div>
                    {% endif %}
                    </div>
                </div>
            </section>