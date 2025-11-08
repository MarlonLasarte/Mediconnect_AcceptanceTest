Feature: Diferenciar Pacientes según su estado
  Como doctor con pacientes asignados
  Quiero diferenciar los estados del paciente en el sistema
  Para saber cuáles son más urgentes en su tratamiento y quiénes ya están estables

  Scenario: Visualizar estado de los pacientes en la lista
    Given que el médico accede a la sección "Mis Pacientes"
    When el sistema muestra la lista
    Then cada paciente aparece con un indicador visual de estado: "Crítico", "Estable", "En Observación"
    And los pacientes críticos se resaltan visualmente

  Scenario: Filtrar pacientes por estado clínico
    Given que el médico visualiza la lista de pacientes
    When selecciona un filtro de estado (Crítico, Estable, Observación)
    Then el sistema muestra únicamente los pacientes que coinciden con dicho estado
