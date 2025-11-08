Feature: Autenticación y permisos por rol
  Como administrador del sistema,
  Quiero que cada usuario tenga acceso solo a las funciones que le correspondan según su rol,
  Para mantener la seguridad de la información clínica.

  Scenario: Usuario accede con credenciales válidas
    Given que el usuario tiene una cuenta activa
    When ingresa su usuario y contraseña
    Then el sistema valida sus credenciales
    And permite el acceso a la plataforma según su rol

  Scenario: Usuario interactúa con su menú respectivo
    Given que el usuario ingresó correctamente a la plataforma
    When desee usar la aplicación
    Then verá su menú respectivo según su rol
    And el sistema separa el menú del personal médico del menú del paciente
