Feature: Registro de entrega de turno validado
  Como enfermera
  Quiero firmar digitalmente la entrega de turno
  Para formalizar la transferencia de responsabilidad

  Scenario: Firma digital al entregar turno
    Given que la enfermera ha terminado su turno
    When accede a la opción "Entregar turno"
    Then el sistema solicita la firma digital
    And genera un registro con la fecha, hora y usuario firmante
