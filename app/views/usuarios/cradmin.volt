            {{ content() }}
                <div class="container">
                    <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Crear Administrador</h1>
                            </div>
                                            
                            {{ form("usuarios/cradmin", "method":"post") }}
                               
                                <div class="card-body card-padding">

                                   <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("cedula", "size" : 30, "class":"form-control") }}
                                            </div>
                                        <label class="fg-label">Cédula</label>
                                    </div> 
                                    
                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("nombres", "size" : 30, "class":"form-control") }}
                                        </div>
                                        <label class="fg-label">Nombres</label>
                                    </div> 

                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("apellidos", "size" : 30, "class":"form-control") }}
                                        </div>
                                        <label class="fg-label">Apellidos</label>
                                    </div> 
        
                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            <?php 
                                                echo $this->tag->select(
                                                    array(
                                                        "id_vpds",
                                                        Vpds::find(),
                                                        "using" => array("id", "nombre"),
                                                        "class" => "form-control",
                                                    )
                                                );
                                            ?>
                                        </div>
                                        <label class="fg-label">Vicerrectorado</label>
                                    </div> 

                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("nomb_usuario", "size" : 30, "class":"form-control") }}
                                        </div>
                                        <label class="fg-label">Nombre Usuario</label>
                                    </div> 

                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("clave", "size" : 30, "class":"form-control") }}
                                        </div>
                                        <label class="fg-label">Contraseña</label>
                                    </div> 

                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("correo", "size" : 30, "class":"form-control") }}
                                        </div>
                                        <label class="fg-label">Correo</label>
                                    </div> 
        
                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("telefono", "size" : 30, "class":"form-control") }}
                                        </div>
                                        <label class="fg-label">Telefono</label>
                                    </div> 
       
                                </div>
                                {{ submit_button("Crear Usuario", 'class':'btn btn-info') }}
                                            
                            </form>
                            <br />
                        </div>
                    </div>
                </div>