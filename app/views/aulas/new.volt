                <div class="container">
                   <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Solicitud de Aula</h1>
                                </div>
                                            
                                        {{ form("aulas/create", "method":"post", "enctype":"multipart/form-data") }}                               

                                            <div class="card-body card-padding">

                                                 <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        <?php 
                                                            echo $this->tag->select(
                                                            array(
                                                                "id_carrera",
                                                                Carrera::find(),
                                                                "using" => array("id", "nombre"),
                                                                "class" => "form-control",
                                                                )
                                                            );
                                                        ?>
                                                    </div>
                                                    <label class="fg-label">Carreras</label>
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
                                                    <label class="fg-label">Materias</label>
                                                </div>  

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("catn_alumnos", 'class':'form-control',"type" : "numeric") }}
                                                    </div>
                                                    <label class="fg-label">Cantidad de Alumnos</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line" align="left">
                                                        <br />
                                                        <br />
                                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                                            <span class="btn btn-primary btn-file m-r-10 waves-effect waves-button">
                                                                <span class="fileinput-new">Subir Archivos</span>
                                                                <span class="fileinput-exists">Cambiar</span>
                                                                <input type="file" name="url_academica">
                                                            </span>
                                                            <span class="fileinput-filename"></span>
                                                            <a href="#" class="close fileinput-exists" data-dismiss="fileinput">×</a>
                                                        </div>
                                                        
                                                
                                                    </div>
                                                    <label class="fg-label">Carga Academica</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line" align="left">
                                                        <br />
                                                        <br />
                                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                                            <span class="btn btn-primary btn-file m-r-10 waves-effect waves-button">
                                                                <span class="fileinput-new">Subir Archivos</span>
                                                                <span class="fileinput-exists">Cambiar</span>
                                                                <input type="file" name="url_programatico">
                                                            </span>
                                                            <span class="fileinput-filename"></span>
                                                            <a href="#" class="close fileinput-exists" data-dismiss="fileinput">×</a>
                                                        </div>

                                                    </div>
                                                    <label class="fg-label">Contenido Programatico</label>
                                                </div>

                                                <div class="form-group fg-float">
                                                    <div class="fg-line"align="left">
                                                        <br />
                                                        <br />
                                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                                            <span class="btn btn-primary btn-file m-r-10 waves-effect waves-button">
                                                                <span class="fileinput-new">Subir Archivos</span>
                                                                <span class="fileinput-exists">Cambiar</span>
                                                                <input type="file" name="url_actividades">
                                                            </span>
                                                            <span class="fileinput-filename"></span>
                                                            <a href="#" class="close fileinput-exists" data-dismiss="fileinput">×</a>
                                                        </div>

                                                    </div>
                                                    <label class="fg-label">Plan de Actividades</label>
                                                </div>

                                            </div>
                                            {{ submit_button("Enviar Solicitud", 'class':'btn btn-info') }}
                                            
                                        </form>
                                        <br />
                                    </div>
                                </div>