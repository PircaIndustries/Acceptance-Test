Feature: US-17: Iniciar sesión con credenciales

    Como Gestor Operativo,
    quiero iniciar sesión con mis credenciales
    para acceder a los módulos de mi obra asignada.

    Scenario: Inicio de sesión con credenciales válidas
        Given el Gestor Operativo posee credenciales válidas
        When ingresa su información de acceso
        Then el sistema autentica su identidad y le otorga acceso al panel principal
