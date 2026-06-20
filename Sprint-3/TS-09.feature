Feature: TS09: Endpoint PATCH Project Status

  Como usuario developer,
  quiero implementar el endpoint de modificación de estado de obra mediante PATCH a /api/v1/projects/{id}/status
  para reflejar la situación operativa actual.

  Scenario: Estado actualizado exitosamente
    Given que el endpoint PATCH /api/v1/projects/{id}/status está disponible
    When se envía un payload con un estado válido y la justificación requerida
    Then el sistema retorna 200 OK con el estado actualizado del proyecto.

  Scenario: Justificación ausente
    Given que el endpoint PATCH /api/v1/projects/{id}/status está disponible
    When se envía el cambio de estado sin el campo de justificación
    Then el sistema retorna 400 Bad Request indicando que la justificación es obligatoria.
