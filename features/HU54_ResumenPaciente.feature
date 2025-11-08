Feature: Resumen inteligente de evolución del paciente
  Como médico
  Quiero ver un resumen inteligente con alertas clave de la evolución del paciente
  Para tomar decisiones rápidas

  Scenario: Visualización de resumen clínico inteligente
    Given que el médico accede al perfil del paciente
    When selecciona "Resumen inteligente"
    Then el sistema muestra tendencias, alertas, cambios claves y eventos relevantes
