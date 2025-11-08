Feature: Seguimiento de tratamiento
  Como paciente
  Quiero ver el progreso y las indicaciones de mi tratamiento
  Para cumplir correctamente con las recomendaciones médicas

  Scenario: Paciente visualiza su tratamiento activo
    Given que el paciente está bajo tratamiento
    When accede a la sección "Tratamiento en curso"
    Then el sistema muestra las indicaciones médicas, dosis, fechas y observaciones correspondientes
