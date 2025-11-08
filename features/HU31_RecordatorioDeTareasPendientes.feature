Feature: Recordatorio de tareas pendientes
  Como enfermera
  Quiero ver una lista de tareas pendientes asociadas a cada paciente
  Para no olvidar procedimientos o medicaciones

  Scenario: Visualizar tareas pendientes del paciente
    Given que el usuario accede a la ficha del paciente
    When selecciona "Tareas pendientes"
    Then el sistema muestra una lista actualizada con las tareas y su estado de completado
