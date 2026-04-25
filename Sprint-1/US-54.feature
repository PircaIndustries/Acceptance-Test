Feature: US-54: Solicitud de registro y/o demo

  Como un visitante de la landing page
  quiero ver llamados a la acción claros para registrarme o solicitar una demo
  para que pueda avanzar al siguiente paso sin confusión

  Scenario: Visualización de llamados a la acción en secciones promocionales
    Given que el usuario recorre la landing page
    When visualiza las secciones promocionales
    Then el sistema muestra botones de registro o solicitud de demo con alta visibilidad

  Scenario: Redirección al flujo correspondiente tras accionar un CTA
    Given que el usuario hace clic en uno de los botones de llamada a la acción
    When selecciona la opción correspondiente
    Then el sistema lo dirige al flujo de registro o al formulario de solicitud de demo
