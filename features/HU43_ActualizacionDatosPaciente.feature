Feature: Actualización de mis datos
  Como paciente
  Quiero poder actualizar mi información personal
  Para mantener mis datos al día

  Scenario: Paciente modifica su información personal
    Given que el paciente ha ingresado al sistema
    When selecciona "Editar perfil" y cambia sus datos (dirección, teléfono, contacto de emergencia)
    Then el sistema actualiza la información en la base de datos

  Scenario: Confirmación de actualización exitosa
    Given que el paciente guarda los cambios
    When la actualización se completa
    Then el sistema muestra el mensaje "Datos actualizados correctamente"
