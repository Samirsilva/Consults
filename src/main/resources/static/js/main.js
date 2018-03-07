$(document)
		.ready(
				function() {

					function propertiesService(filter) {
						$
								.ajax({
									type : "GET",
									url : "/api/find/" + filter,
									data : '$format=json',
									dataType : 'json',
									success : function(data) {
										$("#propTable tr").remove();
										$("#propTable tbody")
												.append(
														"<tr><th>NOME</th><th>GÊNERO</th><th>CATEGORIA</th><th>ANO</th><th>AUTOR</th><th>DESCRIÇÃO</th><th>QTD. CAPITULOS</th></tr>");
										var total = 0;
										$
												.each(
														data,
														function(d, results) {
															$(
																	"#propTable tbody")
																	.append(
																			"<tr>"
																					+ "<td class=\"text-nowrap\">"
																					+ results.nome
                                                                                    + "</td>"
																					+ "<td class=\"text-nowrap\">"
																					+ results.genero
                                                                                    + "</td>"
																					+ "<td class=\"text-nowrap\">"
																					+ results.categoria
																					+ "</td>"                                                                                                                                                                        
																					+ "<td class=\"text-nowrap\">"
																					+ results.ano
																					+ "</td>"
																					+ "<td class=\"text-nowrap\">"
																					+ results.autor
																					+ "</td>"
																					+ "<td class=\"text-nowrap\">"
																					+ results.descricao
																					+ "</td>"
																					+ "<td class=\"text-nowrap\">"
																					+ results.capitulo
																					+ "</td>"
																					+ "</tr>")
															total++;
														})
										$("#results")
												.text(
														total
																+ " conteúdos encontrados");
									}
								});
					}
					;

					var minlength = 2;

					$("#search").keypress(function(e) {
						if (e.which == 13) {
							value = $(this).val();
							if (value.length >= minlength) {
								propertiesService(value);
							}
							return false;
						}
					});

				});