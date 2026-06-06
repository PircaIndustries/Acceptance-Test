Feature: TS04: Endpoint GET User

  Como usuario developer,
  quiero implementar el endpoint de consulta de perfil de usuario mediante GET a /api/v1/users/{id}
  para mostrar los datos del usuario en la aplicación.

  Scenario: Usuario encontrado
    Given que el endpoint GET /api/v1/users/{id} está disponible y existen usuarios en la base de datos
    When se envía una solicitud con un ID de usuario válido y un token JWT vigente
    Then el sistema retorna 200 OK con el objeto de perfil del usuario.

  Scenario: Usuario no encontrado
    Given que el endpoint GET /api/v1/users/{id} está disponible
    When se envía una solicitud con un ID inexistente
    Then el sistema retorna 404 Not Found con un mensaje descriptivo.
