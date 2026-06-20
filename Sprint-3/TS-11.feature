Feature: TS11: Endpoint GET Project Items

  Como usuario developer,
  quiero implementar el endpoint de consulta de partidas mediante GET a /api/v1/projects/{id}/items
  para que el frontend pueda cargar el catálogo de trabajo de una obra antes de registrar avances.

  Scenario: Partidas encontradas
    Given que el endpoint GET /api/v1/projects/{id}/items está disponible y el proyecto tiene partidas registradas
    When se envía una solicitud con el ID de un proyecto válido
    Then el sistema retorna 200 OK con el listado de partidas incluyendo nombre, fechas de inicio y fin.

  Scenario: Proyecto sin partidas registradas
    Given que el endpoint GET /api/v1/projects/{id}/items está disponible
    When se consulta un proyecto que aún no tiene partidas definidas
    Then el sistema retorna 200 OK con un arreglo vacío.
