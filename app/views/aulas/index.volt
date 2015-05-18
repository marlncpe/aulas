
{{ content() }}
<!--
<div align="right">
    {{ link_to("aulas/new", "Crear aulas") }}
</div>
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
                                            <div class="col-sm-6 col-md-3">
                                                <div class="mini-charts-item bgm-cyan">
                                                    <div class="clearfix">    
                                                        <div class="count">
                                                            <small>Programa</small>
                                                            <h2>Nombre_Aula</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                    

                                    </div>
                                    
                                    <div role="tabpanel" class="tab-pane animated fadeIn active" id="tab-2">
                                        
                                        <div class="row">
                                            
                                            <div class="col-sm-6 col-md-3">
                                                <div class="mini-charts-item bgm-cyan">
                                                    <div class="clearfix">
                                                        <div class="chart stats-bar"><canvas height="45" width="83" style="display: inline-block; width: 83px; height: 45px; vertical-align: top;"></canvas></div>
                                                        <div class="count">
                                                            <small>Website Traffics</small>
                                                            <h2>987,459</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>    
                                        </div>

                                    </div>
                                    
                                    <div role="tabpanel" class="tab-pane animated fadeIn" id="tab-3">
                                        
                                        <!-- Form -->   
                                        <!--<form>
                                            <div class="card-header ch-alt">
                                                <h2>Sample Form <small>Pellentesque ac lectus sed elit dictum vehicula</small></h2>
                                            </div>
                                            
                                            <div class="card-body card-padding">
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        <input class="form-control" type="email">
                                                    </div>
                                                    <label class="fg-label">Name</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        <input class="form-control" type="email">
                                                    </div>
                                                    <label class="fg-label">Email address</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        <input class="form-control" type="email">
                                                    </div>
                                                    <label class="fg-label">Contact Number</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        <textarea style="overflow: hidden; word-wrap: break-word; height: 50px;" class="form-control auto-size"></textarea>
                                                    </div>
                                                    <label class="fg-label">Message</label>
                                                </div>
                                                
                                                <button class="btn btn-info waves-effect">Submit</button>
                                                <button class="btn btn-link waves-effect">Cancel</button>
                                            </div>
                                        </form>-->

                                            <div class="card-header ch-alt">
                                                <h2>Solicitud de Aula <small>Subtitulo lorem ipsu lorem ipsu lorem ipsu</small></h2>
                                            </div>
                                            
                                            {{ form("aulas/create", "method":"post") }}

                                            {{ content() }}

                                            <div class="card-body card-padding">
                                           
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("id_periodo", 'class':'form-control',"type" : "numeric") }}
                                                    </div>
                                                    <label class="fg-label">Periodo</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("id_materia", 'class':'form-control',"type" : "numeric") }}
                                                    </div>
                                                    <label class="fg-label">Materia</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("id_usuario", 'class':'form-control',"type" : "numeric") }}
                                                    </div>
                                                    <label class="fg-label">Usuario</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("id_estado", 'class':'form-control',"type" : "numeric") }}
                                                    </div>
                                                    <label class="fg-label">Estado</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("cant_alumnos", 'class':'form-control',"type" : "numeric") }}
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


                                            </div>
                                            {{ submit_button("Enviar Solicitud", 'class':'btn btn-info') }}
                                            
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>

                      
                        
                    </div>   
                    
                    
                </div>
