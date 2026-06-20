Feature: TS03: Endpoint POST User

  Como usuario developer,
  quiero implementar el endpoint de registro de usuarios mediante POST a /api/v1/users
  para que los profesionales puedan crear sus cuentas.

  Scenario: Registro exitoso
    Given que el endpoint POST /api/v1/users está disponible
    When se envía un payload JSON válido con nombre, correo, contraseña y rol
    Then el sistema retorna 201 Created con los datos del usuario registrado excluyendo la contraseña.

  Scenario: Correo duplicado
    Given que el endpoint POST /api/v1/users está disponible
    When se envía un payload con un correo que ya existe en la base de datos
    Then el sistema retorna 400 Bad Request con un mensaje indicando que el correo ya está registrado.
