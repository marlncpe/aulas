                <div class="container">
                   <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Crear Periodo</h1>
                                </div>
                                            
                                        {{ form("periodo/create", "method":"post") }}                               

                                            <div class="card-body card-padding">

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("nombre", 'class':'form-control', "size" : 30, 'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introdusca el nombre del periodo que se abrira','pattern':'[a-zA-Z0-9-- ]+','required':'true')}}
                                                    </div>
                                                    <label class="fg-label">Nombre</label>
                                                </div>
                                                 <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("descripcion", 'class':'form-control', "size" : 30, 'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introduzca los meses que componen este periodo; este campo no acepta numeros','pattern':'[a-zA-Z -, ]+','required':'true') }}
                                                    </div>
                                                    <label class="fg-label">Descripcion</label>
                                                </div> 
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("fecha_inicio", 'class':'form-control', "size" : 30, 'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introduzca la fecha en que inicia este periodo','pattern':'(0[1-9]|1[0-9]|2[0-9]|3[01])-(0[1-9]|1[012])-[0-9]{4}','required':'true') }}
                                                    </div>  
                                                    <label class="fg-label">Fecha Inicio</label>
                                                </div>  

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("fecha_fin", 'class':'form-control', "size" : 30, 'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introduzca la fecha en que finaliza este periodo','pattern':'(0[1-9]|1[0-9]|2[0-9]|3[01])-(0[1-9]|1[012])-[0-9]{4}','required':'true') }}
                                                    </div>
                                                    <label class="fg-label">Fecha Fin</label>
                                                </div>   

                                            </div>
                                            {{ submit_button("Crear Periodo", 'class':'btn btn-info') }}
                                            
                                        </form>
                                        <br />
                                    </div>
                                </div>

