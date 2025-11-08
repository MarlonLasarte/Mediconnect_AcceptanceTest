Feature: Registro de evolución de paciente
  Como trabajador de la salud
  Quiero poder registrar la evolución diaria del paciente
  Para llevar un seguimiento de su progreso durante la hospitalización

  Scenario: Registro diario de evolución
    Given que el trabajador de la salud atiende a un paciente hospitalizado
    When ingresa la información de evolución del día (síntomas, signos, observaciones)
    Then el sistema guarda el registro con la fecha y el nombre del profesional

  Scenario: Consulta de evolución previa
    Given que el trabajador desea revisar la evolución del paciente
    When selecciona “Historial de evolución”
    Then el sistema muestra los registros anteriores ordenados por fecha
