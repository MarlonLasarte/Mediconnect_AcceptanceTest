Feature: Reporte diario automático del paciente
  Como médico
  Quiero recibir un resumen diario automático del estado de mis pacientes
  Para priorizar las atenciones del día

  Scenario: Generación automática del reporte
    Given que finaliza el día hospitalario
    When llega la hora programada del cierre
    Then el sistema genera un resumen con los signos vitales y síntomas de cada paciente

  Scenario: Envío de reporte al médico
    Given que el médico tiene pacientes asignados
    When el reporte es generado
    Then el sistema lo envía automáticamente a su correo o panel principal

  Scenario: Visualización de reportes previos
    Given que el médico ingresa al sistema
    When accede a la sección "Reportes diarios"
    Then puede visualizar los reportes previos con sus respectivos indicadores
