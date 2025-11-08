Feature: Confirmación de respuesta a pregunta
  Como trabajador de la salud
  Quiero que las preguntas ya respondidas no se muestren en la interfaz
  Para evitar responder doblemente a una pregunta

  Scenario: Sistema oculta preguntas respondidas
    Given que el usuario ha respondido una pregunta en la bitácora
    When el sistema guarda la respuesta
    Then la pregunta desaparece del listado principal de preguntas pendientes
    And se mueve a la sección "Preguntas respondidas"

  Scenario: Usuario visualiza historial de preguntas respondidas
    Given que el usuario desea revisar las respuestas previas
    When accede a la sección "Preguntas respondidas"
    Then el sistema muestra una lista de preguntas junto a sus respuestas y fecha de resolución
