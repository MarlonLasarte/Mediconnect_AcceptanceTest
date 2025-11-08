Feature: Visualización de estadísticas generales del paciente
  Como trabajador de la salud
  Quiero visualizar estadísticas sobre mis pacientes
  Para evaluar su estado de salud

  Scenario: Usuario accede a estadísticas del paciente
    Given que el usuario cuenta con sesión iniciada
    And se encuentra en la ficha del paciente
    When selecciona la opción "Estadísticas"
    Then el sistema muestra gráficos y métricas sobre signos vitales, evolución del dolor y frecuencia de registros

  Scenario: Usuario descarga las estadísticas
    Given que el usuario visualiza el panel de estadísticas
    When selecciona la opción "Descargar reporte"
    Then el sistema genera un archivo con los datos actuales en formato PDF o Excel
