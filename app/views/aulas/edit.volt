
            {{ content() }}
            
            <section id="content">
                <div class="container">

                    <!-- teacher Data -->
                    <div class="col-sm-3">
                        <div class="card profile-view">
                            <div class="pv-header">
                                {{ image("img/profile-pics/profile-pic.jpg") }}
                            </div>
                            
                            <div class="pv-body">
                                <br />
                                <br />
                                <h2>{{solicitud.usuarios.nombres}}, {{solicitud.usuarios.apellidos}}</h2>
                                <small>{{solicitud.usuarios.cedula}}</small>
                                <ul class="pv-contact">
                                    <li><i class="md md-phone"></i> {{solicitud.usuarios.telefono}}</li>
                                    <li><i class="md md-mail"></i> {{solicitud.usuarios.correo}}</li>
                                </ul>
                                
                            </div>
                        </div>
                    
                    </div>
                    <!-- end teacher data -->

                    <!-- solicitud data -->
                    
                    <div class="col-sm-6">
                        <div class="card profile-view">
                            
                            <div class="pv-contact">
                                <br />
                                <h2>Datos de Solicitud</h2>
                                <br />
                                <p align="left">
                                    <h3><i class="md md-phone"></i> Numero de Solicitud : {{ solicitud.id }}</h3>
                                    <h3><i class="md md-phone"></i> Nombre de la Materia : {{ solicitud.materia.nombre }}</h3>
                                    <h3><i class="md md-phone"></i> Cantidad de Alumnos : {{ solicitud.catnalumnos }}</h3>
                                    <br />
                                    <h3><i class="md md-event"></i> Fecha &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: {{ solicitud.fechacreacion }}</h3>
                                    <h3><i class="md md-event"></i> Fecha Inicio : {{ solicitud.fechainicio }}</h3>
                                    <h3><i class="md md-event"></i> Fecha Cierre : {{ solicitud.fechafin }}</h3>
                                    <br />
                                </p>
                            </div>
                        </div>
                    
                    </div>
                    <!-- end solicitud data -->
                    
                    <!-- Documentos Data -->
                    <!-- URL Actividades -->
                    <div class="col-sm-6 col-md-3">
                        <div class="mini-charts-item bgm-yellow">
                            <div class="clearfix">
                                <a href="">
                                    <div class="count">
                                        <small>Plan de</small>
                                        <h2>Actividades</h2>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- End URL Actividades -->
                    <!-- URL Academica -->
                    <div class="col-sm-6 col-md-3">
                        <div class="mini-charts-item bgm-yellow">
                            <div class="clearfix">
                                <a href="">
                                    <div class="count">
                                        <small>Carga</small>
                                        <h2>Academica</h2>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- End URL Academica -->
                    <!-- URL Programatico -->
                    <div class="col-sm-6 col-md-3">
                        <div class="mini-charts-item bgm-yellow">
                            <div class="clearfix">
                                <a href="">
                                    <div class="count">
                                        <small>Contenido </small>
                                        <h2>Programatico</h2>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div> 
                    <!-- End URL Programatico-->
                                
                    <!-- end Documentos data -->


                </div>
            </section>