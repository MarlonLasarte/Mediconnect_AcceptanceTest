Feature: Registro de incidentes clínicos
  Como personal médico
  Quiero registrar incidentes clínicos inesperados (caídas, reacciones adversas, errores menores)
  Para llevar un control y análisis de seguridad

  Scenario: Registro de incidentes clínicos
    Given que el usuario tiene sesión iniciada
    And se encuentra en la ficha del paciente
    When selecciona "Registrar incidente" e ingresa los detalles
    Then el sistema guarda el reporte
    And notifica al jefe de área
