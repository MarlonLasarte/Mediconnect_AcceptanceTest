Feature: Registrar Pacientes asignados
  Como médico
  Quiero registrar pacientes en el sistema
  Para acceder a sus perfiles e información

  Scenario: Acceder a la opción para registrar paciente
    Given que el médico inició sesión correctamente
    And se encuentra en su panel principal
    When selecciona la opción "Registrar Paciente"
    Then el sistema muestra un formulario con los campos: nombre completo, DNI, edad, cama o habitación asignada y diagnóstico inicial
    And se muestra el botón "Guardar"

  Scenario: Registrar paciente exitosamente
    Given que el médico completó todos los campos del formulario
    When presiona el botón "Guardar"
    Then el sistema registra al paciente en la lista de pacientes asignados
    And muestra el mensaje "Paciente registrado exitosamente"

  Scenario: Error en el registro de paciente por campos incompletos
    Given que el médico no completó correctamente todos los campos requeridos
    When presiona el botón "Guardar"
    Then el sistema resalta los campos faltantes
    And muestra un mensaje "Por favor, complete todos los campos obligatorios"
