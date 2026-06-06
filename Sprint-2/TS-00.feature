Feature: TS00: Setup Mock API

  Como equipo de desarrollo,
  quiero disponer de un servidor Mock API funcional con datos de prueba,
  para desarrollar y probar el frontend sin dependencia del backend real.

  Scenario: Servidor Mock levantado correctamente
    Given que el archivo "kipu-data.json" con datos de prueba está disponible en el proyecto
    When se ejecuta el comando de inicio del servidor Mock API
    Then el servidor se levanta exitosamente en el puerto configurado
    And muestra en consola el mensaje "Mock API running"
    And el frontend puede realizar operaciones CRUD al servidor mock
