Feature: TS05: Endpoint PUT User Roles

  Como usuario developer,
  quiero implementar el endpoint de asignación de roles mediante PUT a /api/v1/users/{id}/roles
  para que el administrador pueda modificar permisos de los usuarios.

  Scenario: Asignación de rol exitosa
    Given que el endpoint PUT /api/v1/users/{id}/roles está disponible
    When se envía una solicitud con un administrador autenticado, un ID de usuario válido y un rol existente en el sistema
    Then el sistema retorna 200 OK y actualiza el rol del usuario en la base de datos.

  Scenario: Rol inválido
    Given que el endpoint PUT /api/v1/users/{id}/roles está disponible
    When se envía un rol que no existe en el catálogo del sistema
    Then el sistema retorna 400 Bad Request indicando los roles válidos disponibles.
