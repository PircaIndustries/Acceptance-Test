Feature: US-34: Registrar perfil de proveedor

  Como miembro del Equipo de Logística,
  quiero registrar nuevos proveedores con sus datos completos,
  para mantener actualizado el directorio de proveedores disponibles.

  Scenario: Registro exitoso de proveedor
    Given que el Equipo de Logística cuenta con los datos completos del proveedor
    And accede al formulario de registro de proveedores
    When ingresa el RUC, razón social, contacto principal, teléfono y correo
    And confirma el registro
    Then el sistema valida que el RUC no exista previamente
    And registra al proveedor en el sistema
    And actualiza la vista general de proveedores incluyendo al nuevo
    And muestra la confirmación "Proveedor registrado exitosamente"

  Scenario: Bloqueo por RUC duplicado
    Given que el Equipo de Logística intenta registrar un proveedor
    And existe un proveedor registrado con el RUC 20123456789
    When ingresa el mismo RUC 20123456789 en el formulario
    And intenta confirmar el registro
    Then el sistema bloquea la acción
    And muestra el mensaje "El RUC ingresado ya existe en el sistema"
    And sugiere verificar el proveedor existente o editar sus datos

  Scenario: Validación de formato de RUC
    Given que el Equipo de Logística está en el formulario de registro
    When ingresa un RUC con formato inválido o menos de 11 dígitos
    And intenta avanzar
    Then el sistema muestra el mensaje "El RUC debe contener 11 dígitos numéricos"
    And bloquea el envío hasta corregir el formato

  Scenario: Validación de campos obligatorios
    Given que el Equipo de Logística está registrando un proveedor
    When omite el correo electrónico o el teléfono de contacto
    And intenta confirmar el registro
    Then el sistema bloquea la acción
    And resalta los campos obligatorios faltantes

  Scenario: Confirmación en vista general de proveedores
    Given que se registró exitosamente un nuevo proveedor
    When el Equipo de Logística navega al directorio de proveedores
    Then el sistema muestra al nuevo proveedor en el listado general
    And permite buscar al proveedor por RUC
