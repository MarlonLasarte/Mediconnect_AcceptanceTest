Feature: Subida de contenido visual
  Como trabajador de la salud
  Quiero poder adjuntar imágenes clínicas al perfil del paciente
  Para tener un registro más amplio de su estado

  Scenario: Usuario adjunta imagen al perfil del paciente
    Given que el usuario cuenta con sesión iniciada y acceso al expediente del paciente
    When selecciona la opción "Adjuntar imagen" y carga un archivo
    Then el sistema asocia la imagen al perfil del paciente
    And muestra una vista previa con la fecha y el nombre del archivo

  Scenario: Usuario recibe confirmación de subida exitosa
    Given que la imagen ha sido cargada correctamente
    When el proceso de carga finaliza
    Then el sistema muestra el mensaje "La imagen ha sido adjuntada correctamente"
