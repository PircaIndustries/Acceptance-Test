Feature: TS06: Setup Projects API Domain

  Como usuario developer,
  quiero inicializar el dominio de proyectos de obra con su controlador, servicio y repositorio
  para centralizar la información técnica de las construcciones.

  Scenario: Dominio inicializado correctamente
    Given que el modelo de base de datos de obras está definido
    When se inicializa el dominio de proyectos
    Then el ruteo, controladores base y repositorio JPA compilan sin errores y están disponibles para recibir peticiones.

  Scenario: Fallo en la configuración de base de datos
    Given que se inicializa el dominio de proyectos
    When la cadena de conexión a la base de datos es inválida
    Then el sistema registra el error de conexión y el contexto de Spring Boot no se levanta, mostrando el detalle del fallo.
