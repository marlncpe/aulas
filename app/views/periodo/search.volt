
{{ content() }}
            <section id="content">
                <div class="container">
                    
                    <div class="card">
                        <div class="card-header">
                            <h2>Aulas Virtuales <small> Las aulas se encuentran marcadas segun su estatus.</small></h2>
                        </div>
                        
                    
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nombre</th>
                                        <th>Descripcion</th>
                                        <th>Fecha Of Creacion</th>
                                        <th>Fecha Of Inicio</th>
                                        <th>Fecha Of Modificacion</th>
                                        <th>Fecha Of Fin</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {% if page.items is defined %}
                                    {% for aula in page.items %}
                                            <tr class="active">
                                            <td>{{ periodo.id }}</td>
                                            <td>{{ periodo.nombre }}</td>
                                            <td>{{ periodo.descripcion }}</td>
                                            <td>{{ periodo.fecha_creacion }}</td>
                                            <td>{{ periodo.fecha_inicio }}</td>
                                            <td>{{ periodo.fecha_fin }}</td>
                                            <<td>{{ link_to("periodo/edit/"~periodo.id, "Edit") }}</td>
                                            <td>{{ link_to("periodo/delete/"~periodo.id, "Delete") }}</td>
                                        </tr>
                                    {% endfor %}
                                    {% endif %}

                                </tbody>
                                <tbody>
                                    <tr>
                                        <td colspan="2" align="right">
                                            <table align="center">
                                                <tr>
                                                    <td>{{ link_to("periodo/search", "First") }}</td>
                                                    <td>{{ link_to("periodo/search?page="~page.before, "Previous") }}</td>
                                                    <td>{{ link_to("periodo/search?page="~page.next, "Next") }}</td>
                                                    <td>{{ link_to("periodo/search?page="~page.last, "Last") }}</td>
                                                    <td>{{ page.current~"/"~page.total_pages }}</td>
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
