Feature: Agregar información médica sobre el Paciente
  Como médico con pacientes asignados
  Quiero agregar información sobre los pacientes
  Para informar sobre sus medicinas en tiempos y el último personal médico a cargo

  Scenario: Acceder al formulario de registro médico
    Given que el médico está en la ficha del paciente
    When selecciona la opción "Agregar información médica"
    Then el sistema muestra un formulario con campos para medicación, horarios, observaciones y profesional responsable

  Scenario: Guardar información médica del paciente
    Given que el médico completó los campos del formulario
    When selecciona "Guardar"
    Then el sistema registra la información en el expediente del paciente
    And muestra el mensaje "Registro actualizado correctamente"
