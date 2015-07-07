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
                                            </div>
                                            {{ text_field("cedula", "size" : 30, "class":"form-control",'data-toggle':"tooltip",'data-placement':"bottom", 'title':"",'data-original-title':"Introduzca su cedula ejemplo: 10.100.100",'pattern':"[0-9-.]+",'required':'true') }}
                                        <label class="fg-label">Cédula</label>
                                    </div> 
                                    
                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("nombres", "size" : 30, "class":"form-control",'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introduzca sus nombres; este campo no acepta numeros','pattern':'[a-zA-Z  ]+','required':'true') }}
                                        </div>
                                        <label class="fg-label">Nombres</label>
                                    </div> 

                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("apellidos", "size" : 30, "class":"form-control", 'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introduzca sus apellidos; este campo no acepta numeros','pattern':'[a-zA-Z  ]+','required':'true') }}
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
                                            {{ text_field("nomb_usuario", "size" : 30, "class":"form-control",'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introdusca su nombre de usuario','pattern':'[a-zA-Z  ]+','required':'true')}}
                                        </div>
                                        <label class="fg-label">Nombre Usuario</label>
                                    </div> 

                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("clave", "size" : 30, "class":"form-control",'data-toggle':'tooltip','data-placement':'bottom', 'title':'', 'data-original-title':'La clave debe tener al menos 8 digitos y debe contener mayusculas, minusculas, numeros y caracteres especiales','pattern':'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$') }}
                                        </div>
                                        <label class="fg-label">Contraseña</label>
                                    </div> 

                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("correo",'type':'email',"size" : 30, "class":"form-control",'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introduzca su correo Electronico ejemplo: correo@correo.com') }}
                                        </div>
                                        <label class="fg-label">Correo</label>
                                    </div> 
        
                                    <div class="form-group fg-float">
                                        <div class="fg-line">
                                            {{ text_field("telefono", "size" : 30, "class":"form-control",'data-toggle':'tooltip','data-placement':'bottom', 'title':'', 'data-original-title':'Introduzca su numero de telefono ejemplo: (CODIGO)-000-00-00','pattern':'([0-9])+(?:-?\d){9,}') }}
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