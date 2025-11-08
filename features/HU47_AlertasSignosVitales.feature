Feature: Alertas de signos vitales fuera de rango
  Como personal médico
  Quiero recibir alertas automáticas cuando un paciente tenga signos vitales anormales
  Para actuar de inmediato

  Scenario: Generación de alerta automática
    Given que el sistema recibe datos de los sensores de signos vitales
    When un valor supera los límites normales
    Then el sistema genera una alerta en el panel del médico

  Scenario: Notificación inmediata al médico
    Given que se activa una alerta médica
    When el médico se encuentra conectado al sistema
    Then aparece una notificación visual y sonora en su pantalla

  Scenario: Cierre de alerta atendida
    Given que el médico revisa la alerta
    When marca la opción "Atendido"
    Then el sistema actualiza el estado de la alerta a "Resuelto"
