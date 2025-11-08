Feature: Notificaciones de eventos clínicos importantes
  Como personal médico,
  Quiero recibir alertas automáticas cuando haya cambios importantes en el estado del paciente,
  Para reaccionar a tiempo.

  Scenario: Sistema envía alerta por cambio de estado crítico
    Given que el sistema detecta un registro con valores fuera de rango
    When se guarda el registro en la bitácora
    Then el sistema envía una alerta al personal asignado al paciente

  Scenario: Sistema envía recordatorio de control pendiente
    Given que un control clínico programado no ha sido realizado
    When se aproxima la hora establecida
    Then el sistema envía un recordatorio al profesional correspondiente
