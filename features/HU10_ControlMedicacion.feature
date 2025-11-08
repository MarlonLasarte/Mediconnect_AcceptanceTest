Feature: Control de medicación
  Como parte del personal médico
  Quiero registrar los medicamentos administrados al paciente
  Para mantener actualizado su tratamiento y garantizar la continuidad del cuidado

  Scenario: Usuario registra un medicamento
    Given que el usuario ha iniciado sesión y pertenece al personal médico
    When selecciona la opción "Registrar medicación"
    Then el sistema muestra un formulario con campos para medicamento, dosis, hora y observaciones opcionales

  Scenario: Sistema alerta por dosis duplicada
    Given que se intenta registrar un medicamento que ya fue administrado en el mismo turno
    When el usuario intenta guardar los datos
    Then el sistema muestra una advertencia: "Este medicamento ya fue registrado recientemente"

  Scenario: Usuario visualiza historial de medicación
    Given que el usuario accede a la ficha clínica del paciente
    When selecciona la opción "Historial de medicación"
    Then el sistema muestra una lista cronológica con fechas, dosis, medicamentos y responsables de administración
