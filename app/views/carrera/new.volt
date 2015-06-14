                <div class="container">
                   <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Crear Carrera</h1>
                                </div>                
                                        {{ form("carrera/create", "method":"post") }}                       

                                            <div class="card-body card-padding">

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("nombre", 'class':'form-control', "size" : 30) }}
                                                    </div>
                                                    <label class="fg-label">nombre</label>
                                                </div>
                                                 <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("descripcion", 'class':'form-control', "size" : 30) }}
                                                    </div>
                                                    <label class="fg-label">Descripcion</label>
                                                </div> 
                                            </div>
                                            {{ submit_button("Crear Carrera", 'class':'btn btn-info') }}
                                            
                                        </form>
                                        <br />
                                    </div>
                                </div>