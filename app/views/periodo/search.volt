
        {{ content() }}
            <section id="content">
                <div class="container">
                    
                    <div class="card">
                        <div class="card-header">
                            <h2>Periodos</h2>
                        </div>
                        
                    
                        <div class="table-responsive">
                            <table class="table">
                                <thead> 
                                    <tr>
                                       
                                        <th>Nombre</th>
                                        <th>Descripcion</th>
                                        <th>Fecha de Creacion</th>
                                        <th>Fecha de Inicio</th>
                                        <th>Fecha de Fin</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {% if page.items is defined %}
                                    {% for periodo in page.items %}
                                            <tr class="active">
                                            
                                            <td>{{ periodo.nombre }}</td>
                                            <td>{{ periodo.descripcion }}</td>
                                            <td>{{ periodo.fechacreacion }}</td>
                                            <td>{{ periodo.fechainicio }}</td>
                                            <td>{{ periodo.fechafin }}</td>
                                            <td>{{ link_to("periodo/delete/"~periodo.id, "Borrar") }}</td>
                                        </tr>
                                    {% endfor %}
                                    {% endif %}

                                </tbody>
                                <tbody>
                                    <tr>
                                        <td colspan="2" align="right">
                                            <table align="center">
                                                <tr>
                                                    <td>{{ link_to("periodo/search", "Primero") }} </td> 
                                                    <td>| {{ link_to("periodo/search?page="~page.before, "Anterior") }} </td>
                                                    <td>| {{ link_to("periodo/search?page="~page.next, "Siguiente") }} </td>
                                                    <td>| {{ link_to("periodo/search?page="~page.last, "Ultima") }} </td>
                                                    <td>| {{ page.current~"/"~page.total_pages }} </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </section>
