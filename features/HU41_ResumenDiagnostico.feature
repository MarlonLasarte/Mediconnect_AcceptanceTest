Feature: Resumen de diagnóstico
  Como trabajador de la salud
  Quiero que el sistema genere un resumen automático del diagnóstico del paciente
  Para agilizar la comprensión de datos y facilitar un tratamiento más rápido

  Scenario: Generación de resumen
    Given que el trabajador de la salud ha completado el registro clínico del paciente
    When se registran los datos y se terminan de procesar
    Then el sistema produce automáticamente un resumen con diagnóstico, antecedentes y tratamiento sugerido
