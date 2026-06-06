Feature: US-13: Registrar merma de materiales

  Como miembro del Equipo de Logística,
  quiero registrar las mermas de materiales con evidencia fotográfica,
  para mantener actualizado el inventario activo y documentar las pérdidas.

  Scenario: Registro exitoso de merma con deducción de inventario
    Given que el Equipo de Logística identifica una merma en almacén
    And accede al módulo de registro de mermas
    When selecciona el material afectado del inventario activo
    And ingresa la cantidad de merma
    And adjunta al menos una evidencia fotográfica del material mermado
    And confirma el registro
    Then el sistema deduce automáticamente la cantidad del inventario activo
    And genera un registro de merma con número de documento
    And almacena la evidencia fotográfica vinculada al registro
    And muestra la confirmación "Merma registrada exitosamente"

  Scenario: Bloqueo por ausencia de evidencia fotográfica
    Given que el Equipo de Logística está registrando una merma
    When completa los campos de material y cantidad
    But no adjunta ninguna evidencia fotográfica
    And intenta confirmar el registro
    Then el sistema bloquea la acción
    And muestra el mensaje "Debe adjuntar al menos una evidencia fotográfica"

  Scenario: Validación de cantidad de merma contra inventario
    Given que el Equipo de Logística está registrando una merma
    When ingresa una cantidad superior al stock disponible del material
    And intenta confirmar el registro
    Then el sistema bloquea la acción
    And muestra el mensaje "La cantidad de merma excede el inventario activo disponible"

  Scenario: Visualización del inventario actualizado post-merma
    Given que se ha registrado exitosamente una merma
    When el Equipo de Logística consulta el inventario del material afectado
    Then el sistema refleja la nueva cantidad descontada
