Feature: Seguimiento de indicadores de salud
  Como paciente
  Quiero ver mis indicadores de salud en gráficos simples
  Para entender mi progreso y motivarme a mejorar

  Scenario: Visualización de indicadores en gráfico
    Given que el paciente accede a la sección "Mi progreso"
    When entra al panel
    Then el sistema muestra gráficos de peso, presión, frecuencia cardíaca y temperatura

  Scenario: Filtro por rango de fechas
    Given que existen datos de varios días registrados
    When el paciente selecciona un rango de fechas
    Then los gráficos se actualizan mostrando solo la información de ese período

  Scenario: Detección de valores anormales
    Given que un indicador se aleja del rango saludable
    When el sistema lo detecta
    Then muestra un mensaje educativo o de recomendación médica
