Feature: Acceso rápido a pacientes frecuentes
  Como médico
  Quiero tener acceso rápido a los pacientes que reviso con más frecuencia
  Para optimizar mi tiempo durante el turno

  Scenario: Marcar paciente como frecuente
    Given que el médico tiene una lista de pacientes
    When marca uno como favorito
    Then el paciente aparece en la sección "Pacientes frecuentes" del panel principal
