Feature: Cambio de estado clínico
  Como miembro del equipo médico,
  Quiero actualizar el estado clínico del paciente,
  Para mantener informados a todos los miembros del equipo.

  Scenario: Usuario actualiza estado del paciente
    Given que el usuario es parte del personal médico
    When selecciona el estado del paciente desde la ficha clínica
    Then el sistema guarda el nuevo estado
    And actualiza la vista principal

  Scenario: Sistema notifica cambio de estado
    Given que el estado del paciente ha cambiado
    When se confirma la actualización
    Then el sistema envía notificaciones automáticas al equipo responsable

  Scenario: Usuario visualiza historial de cambios de estado
    Given que el usuario accede a la ficha del paciente
    When selecciona la opción "Historial de estados"
    Then el sistema muestra los registros de cada cambio con fecha, hora y responsable
