Feature: US-53: Gestión de consultas y canales de contacto

Como Visitante Interesado,
quiero enviar consultas y visualizar las alternativas de comunicación corporativa,
para establecer contacto directo con el equipo de PircaIndustries de manera rápida y segura.

  Scenario: Acceso a las vías de comunicación institucional
    Given que el Visitante Interesado desea establecer contacto con la empresa
    When navega hacia el módulo de soporte o contacto
    Then el sistema despliega los canales oficiales de comunicación junto con un medio de captura de datos directo

  Scenario: Envío exitoso de consulta comercial
    Given que el Visitante Interesado proporciona sus datos de contacto y el motivo de su consulta
    When confirma el envío de la información
    Then el sistema registra la solicitud en la base de datos de atención
    And presenta un mensaje de confirmación visual garantizando la recepción exitosa

  Scenario: Prevención de envío con datos incompletos o inválidos
    Given que el Visitante Interesado omite información obligatoria o ingresa un formato de correo inválido
    When intenta procesar el envío de la consulta
    Then el sistema bloquea la transacción
    And advierte visualmente sobre los campos específicos que requieren corrección
