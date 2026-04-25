Feature: US-50: Presentación de Kipu y propuesta de valor

  Como visitante nuevo, 
  quiero entender qué es Kipu y qué problema resuelve, 
  para decidir si continúo explorando la plataforma.

  Scenario: Mostrar una propuesta de valor clara a un visitante nuevo
    Given el usuario ingresa por primera vez a la landing page
    When el usuario visualiza la sección principal
    Then el sistema muestra un mensaje claro con la propuesta de valor de Kipu y un resumen breve del beneficio principal

  Scenario: Reforzar el propósito del producto mientras el visitante continúa navegando
    Given el usuario ha terminado de leer la introducción
    When el usuario avanza por la página
    Then el sistema refuerza el propósito de la plataforma con llamados visuales consistentes
