Feature: TS10: Endpoint POST Project Items

  Como usuario developer,
  quiero implementar el endpoint de registro de partidas mediante POST a /api/v1/projects/{id}/items
  para definir el catálogo de trabajo de una obra.

  Scenario: Partidas registradas exitosamente
    Given que el endpoint POST /api/v1/projects/{id}/items está disponible
    When se envía un arreglo de partidas con nombre, fecha de inicio y fecha de fin válidas
    Then el sistema asocia las partidas al proyecto y retorna 201 Created con los IDs generados.

  Scenario: Fechas lógicamente inválidas
    Given que el endpoint POST /api/v1/projects/{id}/items está disponible
    When se envía una partida cuya fecha de fin es anterior a su fecha de inicio
    Then el sistema retorna 400 Bad Request indicando el error lógico en las fechas.
