Feature: Registro de mejora del paciente
  Como trabajador de la salud
  Quiero poder actualizar el estado del paciente
  Para poder registrar si está mejorando

  Scenario: Usuario actualiza el estado del paciente a “Mejorando”
    Given que el usuario tiene el rol de personal médico
    And se encuentra en la ficha del paciente
    When selecciona la opción "Actualizar estado" y marca "Mejorando"
    Then el sistema guarda el nuevo estado
    And actualiza la vista principal del paciente

  Scenario: Sistema muestra confirmación de actualización
    Given que el cambio de estado se ha guardado correctamente
    When se completa la acción
    Then el sistema muestra el mensaje "El estado del paciente ha sido actualizado exitosamente"
