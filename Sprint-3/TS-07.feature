Feature: TS07: Endpoint POST Project

  Como usuario developer,
  quiero implementar el endpoint de registro de obras mediante POST a /api/v1/projects
  para iniciar el seguimiento operativo del proyecto.

  Scenario: Proyecto registrado exitosamente
    Given que el endpoint POST /api/v1/projects está disponible
    When se envía un payload con nombre, ubicación y presupuesto asignado de la obra
    Then el sistema retorna 201 Created con el ID generado y los datos del proyecto creado.

  Scenario: Nombre de proyecto duplicado
    Given que el endpoint POST /api/v1/projects está disponible
    When se intenta registrar un proyecto con un nombre que ya existe en la base de datos
    Then el sistema retorna 400 Bad Request indicando la duplicidad del nombre.
