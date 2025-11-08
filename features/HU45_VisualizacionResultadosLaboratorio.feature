
Feature: Visualización de resultados de laboratorio
  Como paciente
  Quiero visualizar resultados de mis análisis de laboratorio
  Para entender mi progreso médico

  Scenario: Visualización de lista de resultados
    Given que el paciente tiene exámenes completados
    When selecciona "Mis Exámenes"
    Then el sistema muestra una lista con fecha, tipo y estado de cada análisis

  Scenario: Visualización de resultados detallados
    Given que el paciente selecciona un examen de la lista
    When hace clic sobre él
    Then se muestran los valores medidos, los rangos normales y las observaciones del médico

  Scenario: Descarga del informe de laboratorio
    Given que el paciente visualiza un resultado
    When selecciona "Descargar PDF"
    Then el sistema genera y descarga el documento con el informe completo
