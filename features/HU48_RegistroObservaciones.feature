Feature: Registro de observaciones
  Como parte del equipo médico
  Quiero registrar observaciones diarias sobre el paciente
  Para mantener actualizada su evolución clínica

  Scenario: Creación de nueva observación
    Given que el enfermero está en la ficha del paciente
    When selecciona la opción "Nueva observación"
    Then el sistema muestra campos para hora, turno y nota descriptiva

  Scenario: Guardado de observación
    Given que el enfermero completa los campos requeridos
    When pulsa el botón "Guardar"
    Then el sistema almacena la observación con la fecha y el nombre del enfermero

  Scenario: Visualización por el paciente
    Given que el paciente consulta su bitácora digital
    When accede al historial de observaciones
    Then puede leer las notas registradas por el personal de enfermería
