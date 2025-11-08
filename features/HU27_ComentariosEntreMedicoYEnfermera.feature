Feature: Comentarios entre médico y enfermera
  Como trabajador de la salud
  Quiero un apartado donde se puedan dejar comentarios sobre pacientes
  Para tener un complemento de retroalimentación sobre el paciente

  Scenario: Usuario deja un comentario sobre un paciente
    Given que el usuario tiene acceso a la ficha del paciente
    When selecciona la pestaña "Comentarios" y redacta un texto
    And presiona el botón "Enviar"
    Then el sistema guarda el comentario en el registro del paciente
    And notifica a los miembros del equipo médico relacionados

  Scenario: Usuario visualiza los comentarios existentes
    Given que el usuario se encuentra en la sección de comentarios
    When accede al historial de comentarios
    Then el sistema muestra los comentarios previos ordenados cronológicamente con autor y fecha
