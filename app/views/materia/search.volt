{{ content() }}
            <section id="content">
                <div class="container">
                    
                    <div class="card">
                        <div class="card-header">
                            <h2>Ver todas las materias</h2>
                        </div>
                        
                    
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>                                        
                                        <th>Nombre</th>
                                        <th>Descripcion</th>
                                        <th>Carrera</th>
                                        <th>Fecha de Creacion</th>
                                     </tr>
                                </thead>
                                <tbody>
                                {% if page.items is defined %}
                                {% for materia in page.items %}
                                    <tr>
                                        
                                        <td>{{ materia.nombre }}</td>
                                        <td>{{ materia.descripcion }}</td>
                                        <td>{{ materia.carrera.nombre }}</td>
                                        <td>{{ materia.fechacreacion }}</td>
                                        <td>{{ link_to("materia/edit/"~materia.id, "Editar") }}</td>
                                        <td>{{ link_to("materia/delete/"~materia.id, "Borrar") }}</td>
                                    </tr>
                                {% endfor %}
                                {% endif %}
                                </tbody>
                                <tbody>
                                    <tr>
                                        <td colspan="2" align="right">
                                            <table align="center">
                                                <tr>
                                                    <td>| {{ link_to("materia/search", "Primero") }} </td>
                                                    <td>| {{ link_to("materia/search?page="~page.before, "Anterior") }} </td>
                                                    <td>| {{ link_to("materia/search?page="~page.next, "Siguiente") }} </td>
                                                    <td>| {{ link_to("materia/search?page="~page.last, "Ultimo") }} </td>
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