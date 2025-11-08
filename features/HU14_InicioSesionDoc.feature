Feature: Inicio de Sesión como Doctor en la Aplicación Móvil
  Como doctor con cuenta en el sistema
  Quiero iniciar sesión con mi cuenta
  Para usar el sistema y empezar mis labores

  Scenario: Iniciar Sesión correctamente
    Given que el usuario visualiza el formulario de inicio de sesión 
    And completa con la información correcta
    When presione el botón "Siguiente" 
    And el sistema compruebe que la información es correcta
    Then visualizará el menú desplegado

  Scenario: Iniciar Sesión incorrectamente
    Given que el usuario visualiza el formulario de inicio de sesión 
    And completa con la información incorrecta
    When presione el botón "Siguiente" 
    And el sistema compruebe que la información es incorrecta
    Then el sistema resaltará los espacios donde se llenó erróneamente la información 
    And se visualizará un mensaje que indique el error
