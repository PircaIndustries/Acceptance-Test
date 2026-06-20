Feature: TS08: Endpoint GET Project

  Como usuario developer,
  quiero implementar el endpoint de consulta de obras mediante GET a /api/v1/projects
  para mostrar los indicadores de avance en la aplicación.

  Scenario: Listado de proyectos exitoso
    Given que el endpoint GET /api/v1/projects está disponible
    When se envía una solicitud con un token de autenticación válido
    Then el sistema retorna 200 OK con una lista paginada de proyectos asociados al usuario.

  Scenario: Sin proyectos registrados
    Given que el endpoint GET /api/v1/projects está disponible
    When el usuario autenticado no tiene proyectos asociados
    Then el sistema retorna 200 OK con un arreglo vacío.
