Feature: US-03: Solicitar materiales formalmente

  Como Gestor Operativo,
  quiero generar solicitudes formales de requerimiento de materiales,
  para formalizar las necesidades de abastecimiento en obra.

  Scenario: Generación exitosa de requerimiento completo
    Given que el Gestor Operativo accede al formulario de nuevo requerimiento
    When completa todos los campos obligatorios: categoría, material, proveedor, fecha requerida, prioridad, descripción, descripción adicional y línea presupuestal
    And confirma la generación del requerimiento
    Then el sistema genera una solicitud formal con un código único de requerimiento
    And muestra el código asignado al Gestor Operativo
    And almacena el requerimiento con estado "Pendiente"

  Scenario: Bloqueo por campos obligatorios incompletos
    Given que el Gestor Operativo accede al formulario de nuevo requerimiento
    When omite alguno de los campos obligatorios excepto la descripción adicional
    And intenta generar el requerimiento
    Then el sistema bloquea la acción de envío
    And resalta visualmente los campos faltantes con un mensaje de error
    And muestra el texto "Complete todos los campos obligatorios para continuar"

  Scenario: Validación de fecha requerida coherente
    Given que el Gestor Operativo está completando el requerimiento
    When ingresa una fecha requerida anterior a la fecha actual
    And intenta generar el requerimiento
    Then el sistema bloquea la acción
    And muestra el mensaje "La fecha requerida debe ser igual o posterior a hoy"

  Scenario: Selección de línea presupuestal válida
    Given que el Gestor Operativo está en el formulario de requerimiento
    When selecciona una línea presupuestal sin saldo disponible
    And intenta generar el requerimiento
    Then el sistema advierte "La línea presupuestal seleccionada no tiene saldo disponible"
