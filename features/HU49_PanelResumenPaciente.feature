Feature: Panel resumen del paciente
  Como médico
  Quiero visualizar un resumen general del paciente
  Para tener una visión rápida de su estado actual

  Scenario: Acceso al resumen clínico
    Given que el médico selecciona un paciente de la lista
    When accede a la sección "Resumen clínico"
    Then el sistema muestra los últimos signos vitales, síntomas y medicación activa

  Scenario: Actualización del panel
    Given que hay nuevos datos registrados por el equipo médico
    When el médico actualiza el panel
    Then la información se muestra en tiempo real

  Scenario: Acceso a detalles clínicos
    Given que el médico necesita revisar información específica
    When hace clic en un módulo del resumen
    Then el sistema lo redirige a la sección correspondiente con más detalle
