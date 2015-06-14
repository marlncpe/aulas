{{ content() }}
            <section id="content">
                <div class="container">
                    
                    <div class="card">
                        <div class="card-header">
                            <h2>Ver todas las Carreras</h2>
                        </div>
                        
                    
                        <div class="table-responsive">
                            <table class="table">
                                <thead>        
                                    <tr>
                                        <th>Id</th>
                                        <th>Nombre</th>
                                        <th>Descripcion</th>
                                        <th>Fecha de Creacion</th>
                                    </tr>
                                </thead>
                                <tbody>
                                {% if page.items is defined %}
                                {% for carrera in page.items %}
                                    <tr>
                                        <td>{{ carrera.getId() }}</td>
                                        <td>{{ carrera.getNombre() }}</td>
                                        <td>{{ carrera.getDescripcion() }}</td>
                                        <td>{{ carrera.getFechaCreacion() }}</td>
                                        <td>{{ link_to("carrera/edit/"~carrera.getId(), "Editar") }}</td>
                                        <td>{{ link_to("carrera/delete/"~carrera.getId(), "Borrar") }}</td>
                                    </tr>
                                {% endfor %}
                                {% endif %}
                                </tbody>
                                <tbody>
                                    <tr>
                                        <td colspan="2" align="right">
                                            <table align="center">
                                                <tr>
                                                    <td>| {{ link_to("carrera/search", "Primero") }}</td>
                                                    <td>| {{ link_to("carrera/search?page="~page.before, "Anterior") }}</td>
                                                    <td>| {{ link_to("carrera/search?page="~page.next, "Siguiente") }}</td>
                                                    <td>| {{ link_to("carrera/search?page="~page.last, "Ultimo") }}</td>
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