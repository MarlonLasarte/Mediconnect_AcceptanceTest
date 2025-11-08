Feature: Registro de administración de medicamentos (Enfermería)
  Como enfermera
  Quiero registrar la administración de medicación
  Para asegurar trazabilidad del tratamiento

  Scenario: Registrar medicación administrada
    Given que la enfermera inició sesión
    And visualiza la lista de medicaciones programadas
    When selecciona "Administrar"
    And confirma dosis, fecha y hora
    Then el sistema registra la acción
    And firma digitalmente el registro

  Scenario: Registrar omisión con motivo
    Given que la medicación está programada
    When la enfermera selecciona "No administrar"
    And ingresa la razón clínica (por ejemplo, PA baja o rechazo del paciente)
    Then el sistema registra omisión y motivo
    And genera una alerta para el médico
