Feature: US-35: Modificar perfil de proveedor

  Como miembro del Equipo de Logística,
  quiero actualizar los datos de contacto de proveedores existentes,
  para mantener vigente la información de atención comercial.

  Scenario: Actualización exitosa de proveedor
    Given que el Equipo de Logística visualiza el perfil de un proveedor existente
    When modifica algun dato del proveedor actual
    And confirma la actualización
    Then el sistema guarda el nuevo dato en el perfil del proveedor
    And emite un dialog de confirmación: "Datos actualizados exitosamente"

  Scenario: Cancelación de edición sin cambios
    Given que el Equipo de Logística está editando el perfil de un proveedor
    When modifica algún campo pero decide cancelar la operación
    Then el sistema descarta los cambios no guardados
    And mantiene los datos originales del proveedor
