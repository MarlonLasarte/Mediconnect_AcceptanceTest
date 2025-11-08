Feature: Visualizar exámenes médicos programados
  Como paciente
  Quiero ver mis exámenes médicos programados
  Para conocer los exámenes que debo realizar próximamente

  Scenario: Paciente consulta exámenes pendientes
    Given que el paciente inicia sesión en su cuenta
    When selecciona la opción “Exámenes programados”
    Then el sistema muestra la lista de estudios pendientes con fecha, hora y tipo de examen

  Scenario: Recordatorio de examen próximo
    Given que un examen se aproxima
    When faltan menos de 24 horas para su realización
    Then el sistema envía una notificación o alerta al paciente
