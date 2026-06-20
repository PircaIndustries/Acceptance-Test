Feature: US-10: Visualizar dashboard de control del proyecto

  Como Gestor Operativo,
  deseo acceder a un resumen consolidado de la obra para identificar desviaciones en el plan sin procesar datos de forma manual.

  Scenario: Visualizar resumen consolidado de la obra
    Given que el Gestor Operativo tiene acceso al proyecto asignado
    When el sistema procesa el estado actual de la obra
    Then el sistema expone el porcentaje de avance, la cantidad de RNC abiertos, el personal activo y las alertas de stock crítico de forma unificada.
