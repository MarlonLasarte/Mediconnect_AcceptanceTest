Feature: Historial de tratamientos del paciente
  Como trabajador de la salud
  Quiero consultar el historial de tratamientos previos de mi paciente
  Para tener una visión completa de su evolución y evitar duplicados en el tratamiento

  Scenario: Usuario consulta historial de tratamientos
    Given que el usuario tiene sesión iniciada con rol de personal médico
    And se encuentra en la ficha del paciente
    When selecciona la opción "Historial de tratamientos"
    Then el sistema muestra una lista cronológica de tratamientos previos con información de fecha, tipo de tratamiento, dosis y responsable

  Scenario: Usuario filtra historial por fecha o tipo de tratamiento
    Given que el usuario está en la vista del historial
    When aplica un filtro de búsqueda (por fecha o tipo)
    Then el sistema muestra únicamente los registros correspondientes al criterio seleccionado
