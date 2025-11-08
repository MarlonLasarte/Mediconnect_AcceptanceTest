Feature: Modo de emergencia
  Como personal médico
  Quiero activar un modo de emergencia que priorice la visualización de pacientes críticos
  Para actuar con rapidez en situaciones graves

  Scenario: Visualización prioritaria de pacientes críticos
    Given que el usuario activa el 'Modo emergencia'
    When hay pacientes marcados como críticos
    Then el sistema muestra solo esos perfiles en pantalla
