Feature: Edición de perfil del médico
  Como médico
  Quiero poder editar mi foto de perfil
  Para mantener mi perfil actualizado en el sistema

  Scenario: Médico accede a la opción de edición de perfil
    Given que el médico ha iniciado sesión correctamente
    And se encuentra en la sección "Mi perfil"
    When selecciona la opción "Editar perfil"
    Then el sistema muestra el formulario de edición con la opción para cambiar foto, nombre y otros datos básicos

  Scenario: Médico actualiza su foto de perfil
    Given que el médico se encuentra en la vista de edición de su perfil
    And selecciona una nueva imagen desde su dispositivo
    When presiona el botón "Guardar cambios"
    Then el sistema actualiza la foto de perfil
    And muestra un mensaje de confirmación: "Tu perfil ha sido actualizado exitosamente"
