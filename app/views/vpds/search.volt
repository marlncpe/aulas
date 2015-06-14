
{{ content() }}
            <section id="content">
                <div class="container">
                    
                    <div class="card">
                        <div class="card-header">
                            <h2>Ver todos los vpds</h2>
                        </div>
                        
                    
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nombre</th>
                                        <th>Estado</th>
                                        <th>Descripcion</th>
                                        <th>Fecha de Creacion</th>
                                     </tr>
                                </thead>
                                <tbody>

                                    {% if page.items is defined %}
                                    {% for vpd in page.items %}
                                        <tr>
                                            <td>{{ vpd.id }}</td>
                                            <td>{{ vpd.nombre }}</td>
                                            <td>{{ vpd.estado }}</td>
                                            <td>{{ vpd.descripcion }}</td>
                                            <td>{{ vpd.fecha_creacion }}</td>
                                            <td>{{ link_to("vpds/edit/"~vpd.id, "Edit") }}</td>
                                            <td>{{ link_to("vpds/delete/"~vpd.id, "Delete") }}</td>
                                        </tr>
                                    {% endfor %}
                                    {% endif %}

                                </tbody>
                                <tbody>
                                    <tr>
                                        <td colspan="15" align="center">
                                            <table align="center">
                                                <tr>
                                                    <td>| {{ link_to("vpds/search", "Primero") }}</td>
                                                    <td>| {{ link_to("vpds/search?page="~page.before, "Anterior") }}</td>
                                                    <td>| {{ link_to("vpds/search?page="~page.next, "Siguiente") }}</td>
                                                    <td>| {{ link_to("vpds/search?page="~page.last, "Ultimo") }}</td>
                                                    <td>| {{ page.current~"/"~page.total_pages }} |</td>
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