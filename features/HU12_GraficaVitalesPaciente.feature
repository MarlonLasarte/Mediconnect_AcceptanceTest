Feature: Gráfica de signos vitales del paciente
  Como médico
  Quiero visualizar los signos vitales del paciente en una gráfica interactiva
  Para analizar su evolución clínica de forma rápida y detectar cambios críticos

  Scenario: Sistema genera gráfica de signos vitales
    Given que el personal médico tiene acceso al expediente del paciente
    When selecciona la opción "Ver gráfica de signos vitales" en la bitácora digital
    Then el sistema muestra una gráfica con los valores de temperatura, presión arterial, frecuencia cardiaca y saturación de oxígeno

  Scenario: Usuario filtra o selecciona parámetros específicos
    Given que el médico visualiza la gráfica de signos vitales
    When activa o desactiva los filtros de parámetros
    Then el sistema actualiza dinámicamente la gráfica

  Scenario: Usuario exporta o comparte la gráfica
    Given que la gráfica ha sido generada
    When el usuario selecciona la opción "Exportar"
    Then el sistema le permite exportar las gráficas en formato PDF
