Feature: Acceso sin conexión
  Como médico
  Quiero poder acceder a la bitácora de los pacientes incluso sin conexión a internet
  Para continuar trabajando en zonas rurales

  Scenario: Acceso a datos offline
    Given que el sistema detecta pérdida de conexión
    When el usuario intenta acceder a una ficha
    Then el sistema muestra los datos guardados localmente
