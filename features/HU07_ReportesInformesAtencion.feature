Feature: Reportes e informes de atención
  Como equipo médico,
  Quiero generar reportes de los registros clínicos y de comunicación del equipo,
  Para analizar la calidad del handover y la continuidad del cuidado de un paciente.

  Scenario: Usuario genera reporte de pacientes atendidos
    Given que el usuario tiene el rol de personal médico
    When selecciona el paciente y presiona el botón "Generar reporte"
    Then el sistema genera un reporte de la historia actualizada del paciente hasta el momento
