Feature: TS01: Setup User API Domain

  Como usuario developer,
  quiero inicializar el dominio de usuarios con su controlador, servicio y repositorio
  para establecer la base de la gestión de seguridad y acceso.

  Scenario: Dominio inicializado correctamente
    Given que la arquitectura base del proyecto está configurada
    When se inicializa el dominio de usuarios
    Then las capas de controlador, servicio y repositorio compilan sin errores y el contexto de Spring Boot se levanta correctamente.

  Scenario: Conflicto de dependencias
    Given que se inicializa el dominio de usuarios
    When existe un conflicto de versiones en las dependencias declaradas
    Then el sistema reporta el error de compilación con detalle suficiente para su resolución.
