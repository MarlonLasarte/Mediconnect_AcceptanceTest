Feature: Adjuntar resultados externos al expediente
  Como personal médico
  Quiero adjuntar resultados externos
  Para mantener un expediente completo

  Scenario: Subida exitosa de documento
    Given que el usuario está autenticado
    And visualiza el expediente del paciente
    When selecciona "Adjuntar documento"
    And carga un archivo PDF, JPG o PNG válido
    Then el sistema guarda el archivo
    And muestra metadatos (fecha, tipo, nombre del archivo)

  Scenario: Visualización del documento adjunto
    Given que el documento está registrado
    When el médico accede a la sección "Documentos externos"
    Then puede visualizar el archivo sin descargarlo
    And ver su información asociada
