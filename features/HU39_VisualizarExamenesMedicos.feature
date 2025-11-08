Feature: Visualizar exámenes médicos realizados
  Como paciente
  Quiero ver mis exámenes médicos registrados
  Para conocer los exámenes que se me han realizado y acceder a sus resultados

  Scenario: Paciente consulta exámenes realizados
    Given que el paciente accede al sistema
    When selecciona la opción “Exámenes realizados”
    Then el sistema muestra la lista de exámenes completados con su fecha y resultados disponibles

  Scenario: Descarga de resultado
    Given que el paciente visualiza un examen específico
    When presiona “Descargar resultado”
    Then el sistema permite obtener el informe en formato PDF
