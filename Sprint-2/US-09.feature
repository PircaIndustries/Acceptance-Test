Feature: US-09: Cambiar estado del proyecto

    Como Gestor Operativo,
    quiero modificar el estado global de una obra (ej. En ejecución, Paralizada, Finalizada)
    para reflejar la situación operativa actual ante todos los usuarios

    Scenario: Paralizar obra con justificación
        Given el Gestor Operativo modifica las configuraciones
        When cambia el estado a "Paralizada" y documenta la justificación
        Then el sistema restringe la creación de nuevos requerimientos para dicha obra

    Scenario: Intento de paralizar sin justificación
        Given el Gestor Operativo intenta paralizar la obra
        When omite redactar la justificación obligatoria
        Then el sistema bloquea la actualización del estado
