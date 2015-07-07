                <div class="container">
                   <br />                   
                    <div class="col-sm-12">
                        <!-- Tabs -->

                        <div class="card">
                            <div class="card-header">
                                <h1>Crear Materia</h1>
                                </div>                
                                    {{ form("materia/create", "method":"post") }}                       

                                            <div class="card-body card-padding">

                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("nombre", 'class':'form-control', "size" : 30, 'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introdusca el nombre del Sub-proyecto; este campo no acepta numeros','pattern':'[[a-zA-Z  ]+','required':'true')}}
                                                    </div>
                                                    <label class="fg-label">Nombre</label>
                                                </div>
                                                <div class="form-group fg-float">
                                                    <div class="fg-line">
                                                        {{ text_field("descripcion", 'class':'form-control', "size" : 30,  'data-toggle':'tooltip', 'data-placement':'bottom', 'title':'', 'data-original-title':'Introduzca una breve descripción del Sub-proyecto, este campo no acepta numeros','pattern':'[a-zA-Z  ]+','required':'true') }}
                                                    </div>
                                                    <label class="fg-label">Descripcion</label>
                                                </div> 
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
                                                    <label class="fg-label">Carrera</label>
                                                </div>
                                            </div>
                                            {{ submit_button("Crear Materia", 'class':'btn btn-info') }}
                                            
                                        </form>
                                        <br />
                                    </div>
                                </div>
