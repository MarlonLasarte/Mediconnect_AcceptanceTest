Feature: Asignación automática de pacientes
  Como administrador
  Quiero que los pacientes se asignen automáticamente al personal disponible según su carga de trabajo
  Para equilibrar los turnos

  Scenario: Asignación automática por carga laboral
    Given que un nuevo paciente se registra
    When el sistema evalúa la disponibilidad del personal
    Then asigna automáticamente al médico o enfermero con menor carga
