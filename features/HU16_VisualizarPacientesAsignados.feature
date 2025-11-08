Feature: Visualizar Pacientes asignados
  Como médico con pacientes en el sistema
  Quiero visualizar los perfiles de mis pacientes asignados
  Para acceder a la información de ellos y a la bitácora

  Scenario: Ver lista de pacientes asignados
    Given que el médico inició sesión correctamente
    When accede a la sección "Mis Pacientes"
    Then el sistema muestra la lista de pacientes asignados con su nombre, foto, cama o ubicación y estado clínico

  Scenario: Acceder al perfil de un paciente
    Given que el médico visualiza la lista de pacientes
    When selecciona un paciente
    Then se muestra la ficha clínica del paciente
    And se habilita la opción para ver su bitácora
