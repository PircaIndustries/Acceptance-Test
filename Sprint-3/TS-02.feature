Feature: TS02: Endpoint POST Auth Login

  Como usuario developer,
  quiero implementar el endpoint de autenticación mediante POST a /api/v1/auth/login
  para que los usuarios puedan iniciar sesión y recibir un token JWT.

  Scenario: Credenciales válidas
    Given que el endpoint POST /api/v1/auth/login está disponible
    When se envía un payload con correo y contraseña correctos
    Then el sistema retorna 200 OK con un token JWT válido y la información básica del usuario autenticado.

  Scenario: Credenciales inválidas
    Given que el endpoint POST /api/v1/auth/login está disponible
    When se envía un payload con credenciales incorrectas o usuario inexistente
    Then el sistema retorna 401 Unauthorized con un mensaje descriptivo del error.
