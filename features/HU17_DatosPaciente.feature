Feature: Visualizar los datos básicos de los pacientes
  Como médico con pacientes en el sistema
  Quiero poder acceder a la visualización de algunos datos básicos del paciente
  Para poder mejorar la atención que se le brinda

  Scenario: Mostrar datos básicos del paciente
    Given que el médico accede a la ficha de un paciente
    When el sistema carga la información
    Then se muestran los datos básicos: nombre, edad, diagnóstico inicial, alergias, historial breve y número de cama
