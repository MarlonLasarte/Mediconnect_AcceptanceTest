Feature: Registro de participación del paciente
  Como paciente,
  Quiero registrar mis síntomas o sensaciones en la bitácora,
  Para que el equipo médico tenga en cuenta mi experiencia y estado actual.

  Scenario: Paciente accede al registro personal en la aplicación
    Given que el paciente tiene acceso a su cuenta en la tablet junto a su cama
    When selecciona la opción "Registrar mis síntomas"
    Then el sistema muestra un formulario con campos para texto y nivel de dolor
    And el sistema muestra el botón "Enviar registro"

  Scenario: Paciente guarda sus síntomas
    Given que el paciente ha completado los campos
    When selecciona el botón "Enviar registro"
    Then el sistema guarda su información en la bitácora compartida
    And el equipo médico puede visualizar el nuevo registro en tiempo real

  Scenario: Paciente edita o actualiza un registro previo
    Given que el paciente ha enviado registros anteriores
    When selecciona uno de sus registros
    Then el sistema muestra la opción "Editar"
    And al confirmar los cambios, el sistema actualiza la información manteniendo un historial de versiones
