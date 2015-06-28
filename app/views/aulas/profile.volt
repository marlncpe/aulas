            <section id="content">
                <div class="container">
                    <!--<div class="col-sm-1">

                          <div class="card rating-list">
                            <div class="listview">
                                <div class="lv-header">
                                    <div class="m-t-5">
                                        Evaluacion del aula virtual
                                    </div>
                                    
                                    <div class="clearfix"></div>
                                    
                                    <div class="rl-star">
                                        <i class="md md-star active"></i>
                                        <i class="md md-star active"></i>
                                        <i class="md md-star active"></i>
                                        <i class="md md-star"></i>
                                        <i class="md md-star"></i>
                                    </div>
                                </div>
                                
                                <div class="lv-body">
                                    <div class="p-15">
                                        <div class="lv-item">
                                            <div class="media">
                                                <div class="pull-left">
                                                    1 <i class="md md-star"></i>
                                                </div>
                                                
                                                <div class="pull-right">20</div>
                                                
                                                <div class="media-body">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="lv-item">
                                            <div class="media">
                                                <div class="pull-left">
                                                    2 <i class="md md-star"></i>
                                                </div>
                                                
                                                <div class="pull-right">45</div>
                                                
                                                <div class="media-body">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="lv-item">
                                            <div class="media">
                                                <div class="pull-left">
                                                    3 <i class="md md-star"></i>
                                                </div>
                                                
                                                <div class="pull-right">60</div>
                                                
                                                <div class="media-body">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="lv-item">
                                            <div class="media">
                                                <div class="pull-left">
                                                    4 <i class="md md-star"></i>
                                                </div>
                                                
                                                <div class="pull-right">78</div>
                                                
                                                <div class="media-body">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="lv-item">
                                            <div class="media">
                                                <div class="pull-left">
                                                    5 <i class="md md-star"></i>
                                                </div>
                                                
                                                <div class="pull-right">22</div>
                                                
                                                <div class="media-body">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="22" aria-valuemin="0" aria-valuemax="100" style="width: 22%">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>-->

                    <div class="col-sm-8">

                        <!-- Profile aula view -->
                        <div class="card profile-view">
                            <div class="pv-header">
                                <img src="img/profile-pics/profile-pic.jpg" class="pv-main" alt="">
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
                                <img src="img/profile-pics/profile-pic.jpg" class="pv-main" alt="">
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