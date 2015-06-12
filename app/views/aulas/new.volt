                <div class="container">
                   <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Solicitud de Aula</h1>
                                </div>
                                            
                                        {{ form("aulas/create", "method":"post") }}                               

                                            <div class="card-body card-padding">

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