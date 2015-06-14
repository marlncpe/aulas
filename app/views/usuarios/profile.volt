            <section id="content">
                <div class="container">

                    <div class="col-sm-6">
                        <!-- Profile teacher view -->
                        <div class="card profile-view">
                            <div class="pv-header">
                                {{ image("img/profile-pics/profile-pic.jpg") }}
                            </div>
                            <br />
                            <br />
                            <div class="pv-body">
                                <h2>{{ userprofile.nombres }}, {{ userprofile.apellidos }} </h2>
                                <small>{{userprofile.cedula}}</small>
                                <ul class="pv-contact">
                                    <li><i class="md md-phone"></i> {{userprofile.telefono}}</li>
                                    <li><i class="md md-mail"></i> {{userprofile.correo}}</li>
                                </ul>
                                
                                <ul class="pv-follow">
                                    <li>{{userprofile.permisos.nombre}}</li>
                                    |
                                    <li>{{userprofile.estado.nombre}}</li>
                                </ul>
                                
                            </div>
                        </div>

                    </div>

                    <div class="row">                    
                        {% for aulas in userprofile.aulas %}
                            <div class="col-sm-6 col-md-3">
                                {% if aulas.estado.nombre == "activo" %}
                                    <div class="mini-charts-item bgm-green">
                                {% elseif aulas.estado.nombre == "inactivo" %}
                                    <div class="mini-charts-item bgm-red">
                                {% elseif aulas.estado.nombre == "espera" %}
                                    <div class="mini-charts-item bgm-yellow">
                                {% endif %}
                                    <div class="clearfix">
                                        <a href="../../aulas/profile/{{ aulas.id }}">
                                            <div class="count">
                                                <small>{{ aulas.usuarios.nombres }}</small>
                                                <h2>{{ aulas.materia.nombre }}</h2>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>    
                        {% endfor %}
                    </div>
                </div>
            </section>