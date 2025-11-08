Feature: Alertas de interacción de medicamentos
  Como médico
  Quiero recibir alertas si registro medicamentos con posibles interacciones
  Para evitar riesgos al paciente

  Scenario: Detección de interacción medicamentosa
    Given que el médico está autenticado
    And accede al expediente del paciente
    And el paciente tiene medicamentos previos registrados
    When el médico intenta agregar un medicamento nuevo
    Then el sistema analiza compatibilidad
    And muestra una alerta indicando riesgo de interacción
    And detalla los medicamentos involucrados

  Scenario: Confirmación obligatoria de riesgo
    Given que una alerta de interacción está activa
    When el médico selecciona "Continuar y registrar"
    Then el sistema solicita confirmación digital
    And registra el medicamento
    And guarda en el historial "Medicamento registrado bajo advertencia"
