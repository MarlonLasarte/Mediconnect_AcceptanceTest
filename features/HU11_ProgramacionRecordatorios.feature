Feature: Programación de recordatorios
  Como personal médico
  Quiero configurar recordatorios automáticos de controles clínicos o exámenes
  Para mejorar el seguimiento del paciente y garantizar la continuidad de la atención

  Scenario: Usuario crea recordatorio
    Given que el médico accede a la ficha del paciente
    When selecciona la opción "Agregar recordatorio"
    Then el sistema permite establecer la fecha, hora y tipo de control a programar

  Scenario: Sistema envía notificación en la fecha programada
    Given que la fecha del recordatorio coincide con el momento actual
    When se cumple la hora indicada
    Then el sistema envía una alerta al usuario asignado al paciente

  Scenario: Usuario edita o elimina un recordatorio
    Given que el médico visualiza la lista de recordatorios existentes
    When selecciona un recordatorio específico
    Then el sistema permite modificar o eliminar el registro y actualiza la programación en consecuencia
