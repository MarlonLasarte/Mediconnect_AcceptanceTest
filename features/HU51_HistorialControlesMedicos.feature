Feature: Historial de controles médicos
  Como paciente
  Quiero ver un historial de mis controles médicos previos
  Para recordar los resultados y observaciones anteriores

  Scenario: Visualización de lista de controles
    Given que el paciente accede al menú principal
    When selecciona "Controles anteriores"
    Then el sistema muestra una lista ordenada cronológicamente con sus controles médicos

  Scenario: Acceso al detalle del control
    Given que el paciente selecciona un control específico
    When hace clic sobre él
    Then el sistema muestra la fecha, el médico y las observaciones asociadas

  Scenario: Descarga del informe
    Given que el paciente visualiza un control
    When selecciona "Descargar PDF"
    Then el sistema genera y descarga el documento con la información
