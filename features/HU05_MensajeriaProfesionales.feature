Feature: Mensajería interna entre profesionales
  Como miembro del equipo médico,
  Quiero enviar y recibir mensajes clínicos sobre mis pacientes asignados,
  Para coordinar mejor el tratamiento y evitar errores de comunicación.

  Scenario: Usuario envía mensaje clínico
    Given que el usuario cuenta con sesión iniciada
    And se encuentra en la vista del paciente
    When redacta el mensaje y presiona el botón "Enviar"
    Then el sistema almacena el mensaje en el historial de comunicación del paciente
    And notifica al receptor correspondiente

  Scenario: Usuario recibe notificación de nuevo mensaje
    Given que el usuario receptor cuenta con sesión iniciada en el sistema
    When otro miembro del equipo envía un mensaje sobre un paciente compartido
    Then el sistema muestra una notificación visual y sonora
    And el usuario puede acceder directamente al mensaje desde la bandeja de entrada

  Scenario: Usuario filtra mensaje por paciente o remitente
    Given que el usuario está en la sección de mensajes
    When selecciona un filtro por paciente o remitente
    Then el sistema muestra únicamente los mensajes relacionados con ese filtro

  Scenario: Usuario elimina un mensaje
    Given que el usuario visualiza la lista de mensajes
    When selecciona un mensaje que él mismo envió y presiona la opción "Eliminar"
    Then el sistema solicita una confirmación antes de borrar el mensaje
