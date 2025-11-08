Feature: Acceso a mi historial médico
  Como paciente
  Quiero acceder a mi historial médico
  Para conocer mis diagnósticos, tratamientos y resultados anteriores

  Scenario: Paciente consulta su historial
    Given que el paciente ha iniciado sesión correctamente
    When selecciona la opción "Mi historial médico"
    Then el sistema muestra los diagnósticos, tratamientos y resultados anteriores registrados

  Scenario: Filtro de historial
    Given que el paciente desea revisar información específica
    When filtra por tipo de atención o fecha
    Then el sistema muestra solo los registros que cumplen con los criterios seleccionados
