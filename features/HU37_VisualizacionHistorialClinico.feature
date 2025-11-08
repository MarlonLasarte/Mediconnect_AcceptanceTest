Feature: Visualización de historial clínico completo
  Como médico
  Quiero ver el historial clínico completo del paciente
  Para conocer sus antecedentes y brindar una mejor atención

  Scenario: Médico accede al historial clínico del paciente
    Given que el médico ha iniciado sesión en el sistema
    When selecciona a un paciente de la lista
    Then el sistema muestra su historial clínico completo con diagnósticos, tratamientos y antecedentes registrados

  Scenario: Búsqueda por paciente
    Given que el médico necesita consultar un historial
    When ingresa el nombre o código del paciente en el buscador
    Then el sistema muestra el expediente correspondiente
