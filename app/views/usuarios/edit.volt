{{ content() }}
                <div class="container">
                    <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Editar Perfil</h1>
                            </div>
                                            
                                        {{ form("usuarios/save", "method":"post","enctype":"multipart/form-data") }}
                               

                                            <div class="card-body card-padding">
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("cedula", "size" : 30,"class":"form-control") }}
                                                    </div>
                                                    <label class="fg-label">Cedula</label>
                                                </div> 
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("nombres", "size" : 30,"class":"form-control") }}
                                                    </div>
                                                    <label class="fg-label">Nombres</label>
                                                </div> 
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("apellidos", "size" : 30,"class":"form-control") }}
                                                    </div>
                                                    <label class="fg-label">Apellidos</label>
                                                </div>
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("correo", "size" : 30,"class":"form-control") }}
                                                    </div>
                                                    <label class="fg-label">Correo</label>
                                                </div> 
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("telefono", "size" : 30,"class":"form-control") }}
                                                    </div>
                                                    <label class="fg-label">Telefono</label>
                                                </div>
                                                <div class="form-group fg-float">
                                                    <div class="fg-line" align="left">
                                                        <br />
                                                        <br />
                                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                                            <span class="btn btn-primary btn-file m-r-10 waves-effect waves-button">
                                                                <span class="fileinput-new">Subir Foto</span>
                                                                <span class="fileinput-exists">Cambiar</span>
                                                                <input type="file" name="foto">
                                                            </span>
                                                            <span class="fileinput-filename"></span>
                                                            <a href="#" class="close fileinput-exists" data-dismiss="fileinput">×</a>
                                                        </div>

                                                    </div>
                                                    <label class="fg-label">Foto de Perfil</label>
                                                </div>
                                            </div>

                                            {{ hidden_field("id") }}
                                            {{ hidden_field("fecha_creacion", "size" : 30) }}
                                            {{ submit_button("Actualizar", 'class':'btn btn-info') }}
                                            
                                        </form>
                                        <br />
                                    </div>
                                </div>