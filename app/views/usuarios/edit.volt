{{ content() }}
                <div class="container">
                    <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Editar Perfil</h1>
                            </div>
                                            
                                        {{ form("usuarios/save", "method":"post") }}
                               

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
                                            </div>
                                            {{ hidden_field("id") }}
                                            {{ hidden_field("fecha_creacion", "size" : 30) }}
                                            {{ submit_button("Actualizar", 'class':'btn btn-info') }}
                                            
                                        </form>
                                        <br />
                                    </div>
                                </div>