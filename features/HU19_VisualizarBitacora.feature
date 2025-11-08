Feature: Visualizar la Bitácora del Paciente
  Como médico con pacientes asignados
  Quiero visualizar la bitácora del paciente que elija
  Para poder saber sus emociones y sentires sobre su caso

  Scenario: Acceder a la bitácora del paciente
    Given que el médico está en la ficha del paciente
    When selecciona la opción "Ver Bitácora"
    Then el sistema muestra los registros de la bitácora
    And organiza la información por fecha y hora
