Feature: Chat entre médico y paciente
  Como paciente
  Quiero comunicarme directamente con mi médico desde la aplicación
  Para resolver dudas sin esperar a la próxima visita

  Scenario: Comunicación en tiempo real
    Given que el paciente tiene sesión iniciada
    When selecciona el chat con su médico asignado
    Then puede enviar y recibir mensajes en tiempo real
