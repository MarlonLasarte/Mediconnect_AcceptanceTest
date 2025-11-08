Feature: Cambio de contraseña
  Como médico
  Quiero poder cambiar mi contraseña en cualquier momento
  Para mantener la seguridad de mi cuenta

  Scenario: Médico accede a la opción de cambio de contraseña
    Given que el médico ha iniciado sesión
    When selecciona la opción "Configuración" y luego "Cambiar contraseña"
    Then el sistema muestra un formulario con los campos "Contraseña actual", "Nueva contraseña" y "Confirmar contraseña"

  Scenario: Médico actualiza su contraseña
    Given que el médico completa los campos correctamente
    When presiona el botón "Guardar"
    Then el sistema valida la contraseña actual y actualiza la nueva contraseña
    And muestra el mensaje "Tu contraseña ha sido cambiada exitosamente"

  Scenario: Médico ingresa una contraseña actual incorrecta
    Given que el médico ingresa una contraseña actual no válida
    When intenta guardar los cambios
    Then el sistema muestra el mensaje de error: "La contraseña actual no es correcta"
