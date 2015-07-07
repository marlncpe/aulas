                <div class="container">
                   <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Crear Vicerrectorado</h1>
                                </div>                
                                        {{ form("vpds/create", "method":"post") }}                        

                                            <div class="card-body card-padding">

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("nombre", 'class':'form-control', "size" : 30, 'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introduzca el nombre del vicerrectorado, este campo no acepta numeros','pattern':'[a-zA-Z ]+') }}
                                                    </div>
                                                    <label class="fg-label">Nombre</label>
                                                </div>
                                                 <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("descripcion", 'class':'form-control', "size" : 30, 'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introduzca una breve descripción, este campo no acepta numeros','pattern':'[a-zA-Z ]+') }}
                                                    </div>
                                                    <label class="fg-label">Descripción</label>
                                                </div> 
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("estado", 'class':'form-control', "size" : 30, 'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introduzca el estado donde se ubica el vicerrectorado, este campo no acepta numeros','pattern':'[a-zA-Z ]+') }}
                                                    </div>
                                                    <label class="fg-label">Estado</label>
                                                </div>
                                            </div>
                                            {{ submit_button("Crear Vicerrectorado", 'class':'btn btn-info') }}
                                            
                                        </form>
                                        <br />
                                    </div>
                                </div>