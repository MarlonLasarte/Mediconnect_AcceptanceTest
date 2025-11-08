Feature: Notificaciones de exámenes
  Como paciente
  Quiero recibir notificaciones automáticas cuando se acerque un examen médico
  Para estar preparado

  Scenario: Notificación de cita próxima
    Given que el paciente tiene una cita médica programada
    When faltan 2 horas para la cita
    Then el sistema envía una notificación con la hora y el nombre del profesional

  Scenario: Recordatorio de examen pendiente
    Given que hay un examen pendiente de realizar
    When faltan 24 horas para su ejecución
    Then el sistema envía un recordatorio al paciente

  Scenario: Confirmación de lectura de notificación
    Given que el paciente recibe una notificación
    When pulsa el botón "Confirmar"
    Then el sistema marca el recordatorio como leído
