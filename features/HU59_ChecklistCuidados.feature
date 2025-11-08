Feature: Checklist de cuidados por turno (Enfermería)
  Como enfermera
  Quiero un checklist de cuidados del paciente
  Para asegurar tareas completas en mi turno

  Scenario: Visualización del checklist
    Given que la enfermera está autenticada
    When ingresa a la sección de cuidados
    Then el sistema muestra la lista de tareas programadas para el turno

  Scenario: Registrar tarea realizada
    Given que una tarea está pendiente
    When la enfermera selecciona "Completar"
    And confirma hora y nota opcional
    Then el sistema marca la tarea como realizada
    And actualiza el estado del paciente si aplica
