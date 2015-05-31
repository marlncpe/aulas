
                {{ content() }}
                <!--
                <div align="right">
                    {{ link_to("aulas/new", "Crear aulas") }}
                </div>
                {{ dump(aulasActivas) }}
                -->
                <div class="container">
                   <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h2>Aulas Virtuales</h2>
                                <small>Existentes</small>
                            </div>
                            
                            <div class="card-body">
                                <ul tabindex="1" style="overflow: hidden;" class="tab-nav tn-justified tn-icon" role="tablist">
                                    <li role="presentation" class="">
                                        <a aria-expanded="false" class="col-sx-4" href="#tab-1" aria-controls="tab-1" role="tab" data-toggle="tab">
                                            <i class="md md-lock-open icon-tab"></i>
                                        </a>
                                    </li>
                                    <li class="active" role="presentation">
                                        <a aria-expanded="true" class="col-xs-4" href="#tab-2" aria-controls="tab-2" role="tab" data-toggle="tab">
                                            <i class="md md-lock icon-tab"></i>
                                        </a>
                                    </li>
                                    <li class="" role="presentation">
                                        <a aria-expanded="false" class="col-xs-4" href="#tab-3" aria-controls="tab-3" role="tab" data-toggle="tab">
                                            <i class="md md-add icon-tab"></i>
                                        </a>
                                    </li>
                                </ul>
                                
                                <div class="tab-content p-20">
                                    <div role="tabpanel" class="tab-pane animated fadeIn" id="tab-1">
                                       
                                       
                                        <div class="row">
                                            
                                        {% for aulaSA in aulasSinAsignar %}
                                            <div class="col-sm-6 col-md-3">
                                                <div class="mini-charts-item bgm-yellow">
                                                    <div class="clearfix">
                                                        <a href="../aulas/profile/{{ aulaSA.id }}">
                                                            
                                                            <!--<div class="chart stats-bar"><canvas height="45" width="83" style="display: inline-block; width: 83px; height: 45px; vertical-align: top;"></canvas></div>-->
                                                            <div class="count">
                                                                <small>{{ aulaSA.usuarios.nombres }}</small>
                                                                <h2>{{ aulaSA.materia.nombre }}</h2>
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

                                        {% for aula in aulasActivas %}
                                            
                                            <div class="col-sm-6 col-md-3">
                                                <div class="mini-charts-item bgm-green">
                                                    <div class="clearfix">

                                                        <a href="../aulas/profile/{{ aula.id }}">
                                                            <!--<div class="chart stats-bar"><canvas height="45" width="83" style="display: inline-block; width: 83px; height: 45px; vertical-align: top;"></canvas></div>-->
                                                            <div class="count">
                                                                <small>{{ aula.usuarios.nombres }}</small>
                                                                <h2>{{ aula.materia.nombre }}</h2>
                                                            </div>
                                                        </a>    
                                                    </div>
                                                </div>
                                            </div>    
                                        {% endfor %}
                                        </div>

                                    </div>
                                    
                                    <div role="tabpanel" class="tab-pane animated fadeIn" id="tab-3">
                                        <div class="card-header ch-alt">
                                            <h2>Solicitud de Aula <small>Subtitulo lorem ipsu lorem ipsu lorem ipsu</small></h2>
                                        </div>
                                            
                                        {{ form("aulas/create", "method":"post") }}

                                   

                                            <div class="card-body card-padding">
                                           
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        <?php 
                                                            echo $this->tag->select(
                                                            array(
                                                                "id_periodo",
                                                                Periodo::find(),
                                                                "using" => array("id", "nombre"),
                                                                "class" => "form-control",
                                                                )
                                                            );
                                                        ?>
                                                    </div>
                                                    <label class="fg-label">Periodo</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        <?php 
                                                            echo $this->tag->select(
                                                            array(
                                                                "id_materia",
                                                                Materia::find(),
                                                                "using" => array("id", "nombre"),
                                                                "class" => "form-control",
                                                                )
                                                            );
                                                        ?>
                                                    </div>
                                                    <label class="fg-label">Materia</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        <?php 
                                                            echo $this->tag->select(
                                                            array(
                                                                "id_usuario",
                                                                Usuarios::find(),
                                                                "using" => array("id", "nombres"),
                                                                "class" => "form-control",
                                                                )
                                                            );
                                                        ?>
                                                    </div>
                                                    <label class="fg-label">Usuario</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("catn_alumnos", 'class':'form-control',"type" : "numeric") }}
                                                    </div>
                                                    <label class="fg-label">Cantidad de Alumnos</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("url_academica", 'class':'form-control',"type" : "numeric") }}
                                                    </div>
                                                    <label class="fg-label">URL Academica</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("url_programatico", 'class':'form-control',"type" : "numeric") }}
                                                    </div>
                                                    <label class="fg-label">URL Programatico</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("url_actividades", 'class':'form-control',"type" : "numeric") }}
                                                    </div>
                                                    <label class="fg-label">URL Actividades</label>
                                                </div>
                                                <!--
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("fecha_inicio", 'class':'form-control',"type" : "numeric") }}
                                                    </div>
                                                    <label class="fg-label">Fecha Inicio</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("fecha_fin", 'class':'form-control',"type" : "numeric") }}
                                                    </div>
                                                    <label class="fg-label">Fecha fin</label>
                                                </div>
                                                -->

                                            </div>
                                            {{ submit_button("Enviar Solicitud", 'class':'btn btn-info') }}
                                            
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>

                      
                        
                    </div>   
                    
                    
                </div>
                