
                {{ content() }}

                <div class="container">
                   <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Solicitudes</h1>
                            </div>
                            
                            <div class="card-body">
                                <ul tabindex="1" style="overflow: hidden;" class="tab-nav tn-justified tn-icon" role="tablist">
                                    <li role="presentation" class="">
                                        <a aria-expanded="false" class="col-sx-4" href="#tab-1" aria-controls="tab-1" role="tab" data-toggle="tab">
                                            <i class="md md-lock-open icon-tab"></i>Atendidas
                                        </a>
                                    </li>
                                    <li class="active" role="presentation">
                                        <a aria-expanded="true" class="col-xs-4" href="#tab-2" aria-controls="tab-2" role="tab" data-toggle="tab">
                                            <i class="md md-lock icon-tab"></i>Pendientes
                                        </a>
                                    </li>
                                </ul>
                                
                                <div class="tab-content p-20">
                                    <div role="tabpanel" class="tab-pane animated fadeIn" id="tab-1">
                                       
                                       
                                        <div class="row">
                                            
                                        {% for atendida in atendidas %}
                                            <div class="col-sm-6 col-md-3">
                                                <div class="mini-charts-item bgm-green">
                                                    <div class="clearfix">
                                                        <a href="../aulas/profile/{{ aulaSA.id }}">
                                                            <div class="count">
                                                                <small>{{ atendida.usuarios.nombres }}</small>
                                                                <h2>{{ atendida.materia.nombre }}</h2>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>    
                                        {% endfor %}
                                            
                                        </div>
                    

                                    </div>
                                    
                                    <div role="tabpanel" class="tab-pane animated fadeIn active" id="tab-2">
                                        
                                        <div class="row">

                                        {% for pendiente in pendientes %}
                                            
                                            <div class="col-sm-6 col-md-3">
                                                <div class="mini-charts-item bgm-yellow">
                                                    <div class="clearfix">

                                                        <a href="../aulas/profile/{{ aula.id }}">
                                                            <div class="count">
                                                                <small>{{ pendiente.usuarios.nombres }}</small>
                                                                <h2>{{ pendiente.materia.nombre }}</h2>
                                                            </div>
                                                        </a>    
                                                    </div>
                                                </div>
                                            </div>    
                                        {% endfor %}
                                        </div>

                                    </div>
                                    
                                </div>
                            </div>
                        <!-- End Tags -->
                        </div>
                        
                    </div>   
                    
                    
                </div>
                