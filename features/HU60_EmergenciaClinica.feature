Feature: Escalamiento clínico de emergencia (Enfermería)
  Como enfermera
  Quiero activar una alerta de emergencia clínica
  Para notificar al equipo médico de inmediato

  Scenario: Activación de emergencia
    Given que la enfermera está en la ficha del paciente
    When selecciona el botón "Emergencia"
    Then el sistema desencadena el código clínico
    And notifica al médico encargado y al equipo de respuesta rápida

  Scenario: Registro de evento
    Given que se activó una alerta
    When el sistema envía notificaciones
    Then registra fecha, hora, usuario activador y motivo
    And deja visible el evento en el historial clínico
