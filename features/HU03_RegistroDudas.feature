Feature: Poner dudas en la aplicación
  Como paciente,
  Quiero poder registrar mis dudas en la bitácora digital,
  Para resolver mis dudas de manera efectiva.

  Scenario: Paciente registra sus dudas en la aplicación
    Given que el paciente se encuentra con su tableta asignada al lado de su camilla
    And cuenta con una cuenta registrada en la red de la bitácora
    When el usuario selecciona la opción "Registrar duda" e ingresa el texto de su consulta
    And presiona el botón "Enviar"
    Then el sistema guarda la duda en la bitácora digital

  Scenario: Paciente recibe confirmación de duda registrada
    Given que el paciente ha enviado su duda
    When el sistema guarda la información
    Then muestra el mensaje "Tu duda ha sido registrada, el equipo médico la revisará pronto"
