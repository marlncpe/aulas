
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
                                        <th>Periodo</th>
                                        <th>Materia</th>
                                        <th>Nombre Usuario</th>
                                        <th>status</th>
                                        <th># de Alumnos</th>
                                        <th>Fecha de Inicio</th>
                                        <th>Fecha de Fin</th>
                                        <th>Fecha de Creacion</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {% if page.items is defined %}
                                    {% for aula in page.items %}
                                        {% if aula.estado.nombre == "activo" %}
                                            <tr class="info">
                                        {% elseif aula.estado.nombre == "inactivo" %}
                                            <tr class="danger">
                                        {% elseif aula.estado.nombre == "espera" %}
                                            <tr class="active">
                                        {% endif %}
                                            <td>{{ aula.getId() }}</td>
                                            <td>{{ aula.periodo.nombre }}</td>
                                            <td>{{ aula.materia.nombre }}</td>
                                            <td>{{ aula.usuarios.nombres }}</td>
                                            <td>{{ aula.estado.nombre }}</td>
                                            <td>{{ aula.getCatnAlumnos() }}</td>
                                            <td>{{ aula.getFechaInicio() }}</td>
                                            <td>{{ aula.getFechaFin() }}</td>
                                            <td>{{ aula.getFechaCreacion() }}</td>
                                            {% if session.get("registered")%}

                                            {% else %}
                                                <td>{{ link_to("aulas/edit/"~aula.getId(), "Editar") }}</td>
                                                <td>{{ link_to("aulas/delete/"~aula.getId(), "Borrar") }}</td>
                                            {% endif %}
                                        </tr>
                                    {% endfor %}
                                    {% endif %}

                                </tbody>
                                <tbody>
                                    <tr>
                                        <td colspan="15" align="center">
                                            <table align="center">
                                                <tr>
                                                    <td>{{ link_to("aulas/search", "Primero") }} | </td>
                                                    <td> {{ link_to("aulas/search?page="~page.before, "Antes") }} | </td>
                                                    <td> {{ link_to("aulas/search?page="~page.next, "Sigiente") }} | </td>
                                                    <td> {{ link_to("aulas/search?page="~page.last, "Anterior") }} </td>
                                                    <td> [{{ page.current~"/"~page.total_pages }}]</td>
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