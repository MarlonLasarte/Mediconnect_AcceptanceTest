Feature: Registro de evolución diaria del paciente
  Como médico
  Quiero registrar la evolución diaria del paciente con notas breves y gráficas automáticas
  Para facilitar el seguimiento clínico

  Scenario: Registrar evolución diaria
    Given que el médico está en la ficha del paciente
    When selecciona 'Evolución diaria' e ingresa los datos
    Then el sistema actualiza la gráfica con la información más reciente
