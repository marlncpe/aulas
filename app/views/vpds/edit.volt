{{ content() }}
                <div class="container">
                    <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Editar Vicerrectorado</h1>
                            </div>
                                            
                                        {{ form("vpds/save", "method":"post") }}
                               

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
                                                        {{ text_field("estado", "size" : 30,"class":"form-control") }}
                                                    </div>
                                                    <label class="fg-label">Estado</label>
                                                </div>  
                                            </div>
                                            {{ hidden_field("id") }}
                                            {{ hidden_field("fecha_creacion") }}
                                            {{ submit_button("Editar Vicerrectorado", 'class':'btn btn-info') }}
                                            
                                        </form>
                                        <br />
                                    </div>
                                </div>

