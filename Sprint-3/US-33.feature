Feature: US-33: Exportar dossier de calidad en PDF

  Como Gestor Operativo,
  quiero exportar un archivo PDF que contenga todo el historial de firmas electrónicas y aprobaciones de una etapa constructiva,
  para facilitar la entrega del proyecto a la municipalidad o al cliente final.

  Scenario: Exportación exitosa de dossier completo al concluir fase
    Given que una fase técnica concluye formalmente
    When el Gestor Operativo requiere el compendio de certificaciones
    Then el sistema genera un paquete único e inalterable con las validaciones documentadas

  Scenario: Exportación de dossier restringida por periodo específico
    Given que la supervisión externa demanda certificaciones puntuales
    When el Gestor Operativo restringe la orden a un periodo específico
    Then el sistema provee un compendio limitado únicamente a lo delimitado