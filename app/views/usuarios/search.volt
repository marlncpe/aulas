        {{ content() }}
            <section id="content">
                <div class="container">
                    
                    <div class="card">
                        <div class="card-header">
                            <h2>Usuarios Administradores Registrados</h2>
                        </div>
                        
                    
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Cedula</th>
                                        <th>Nombres</th>
                                        <th>Apellidos</th>
                                        <th>Vpds</th>
                                        <th>Telefono</th>
                                        <th>Correo</th>
                                        <th>Fecha Registro</th>
                                        <th>Estatus</th>
                                     </tr>
                                </thead>
                                <tbody>
                                {% if page.items is defined %}
                                    {% for usuario in page.items %}
                                    <tr>
                                        <td>{{ usuario.cedula }}</td>
                                        <td>{{ usuario.nombres }}</td>
                                        <td>{{ usuario.apellidos }}</td>
                                        <td>{{ usuario.vpds.nombre }}</td>
                                        <td>{{ usuario.telefono }}</td>
                                        <td>{{ usuario.correo }}</td>
                                        <td>{{ usuario.fecha_creacion }}</td>
                                        <td>{{ usuario.estado.nombre }}</td>
                                        <td>{{ link_to("usuarios/delete/"~usuario.id, "Borrar") }}</td>
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
