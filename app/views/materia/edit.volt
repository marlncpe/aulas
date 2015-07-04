{{ content() }}
                <div class="container">
                    <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Editar Materia</h1>
                            </div>
                                            
                                        {{ form("materia/save", "method":"post") }}
                               

                                            <div class="card-body card-padding">

                                                 <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("nombre", "size" : 30,"class":"form-control") }}
                                                    </div>
                                                    <label class="fg-label">Nombre</label>
                                                </div> 
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("descripcion", "size" : 30,"class":"form-control") }}
                                                    </div>
                                                    <label class="fg-label">Descripcion</label>
                                                </div>
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("semestre", "size" : 30,"class":"form-control") }}
                                                    </div>
                                                    <label class="fg-label">Semestre</label>
                                                </div>
                                    
                                            </div>
                                            {{ hidden_field("id") }}
                                            {{ hidden_field("fecha_creacion", "size" : 30) }}
                                            {{ submit_button("Actualizar", 'class':'btn btn-info') }}
                                            
                                        </form>
                                        <br />
                                    </div>
                                </div>


