Feature: Material educativo personalizado
  Como paciente
  Quiero ver material educativo sobre mi condición
  Para comprender mi tratamiento

  Scenario: Despliegue de contenido educativo
    Given que el paciente accede
    When abre "Educación"
    Then se muestran recursos basados en diagnóstico

  Scenario: Recomendación automática
    Given que el paciente tiene síntomas registrados
    When accede a educación
    Then el sistema recomienda contenido relacionado
