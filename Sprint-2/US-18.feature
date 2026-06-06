Feature: US-18: Crear nuevo proyecto de obra

    Como Gestor Operativo,
    quiero registrar una nueva obra en el sistema
    para iniciar su gestión operativa y trazabilidad.

    Scenario: Registrar nueva obra con datos válidos
        Given el Gestor Operativo gestiona su cartera
        When aporta los datos esenciales del nuevo proyecto
        Then el sistema consolida la obra en fase inicial y la asocia a su perfil

    Scenario: Evitar duplicidad por nombre existente
        Given el Gestor Operativo intenta dar de alta una construcción
        When el nombre designado ya se encuentra activo
        Then el sistema objeta el registro para impedir redundancias