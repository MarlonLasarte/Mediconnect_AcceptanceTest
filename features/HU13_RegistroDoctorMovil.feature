Feature: Registro como Doctor en la Aplicación Móvil
  Como doctor sin cuenta en el sistema
  Quiero registrarme desde la aplicación móvil
  Para usar el sistema y facilitar mis labores

  Scenario: Entrar a la pantalla para registrarse
    Given que el usuario está en la pantalla de inicio de sesión y quiere crear una cuenta
    When interactúe con el texto "Registrarse"
    Then visualizará un formulario para rellenar con la información pertinente

  Scenario: Registrarse correctamente
    Given que el usuario ingresa la información solicitada en los espacios respectivos del formulario
    When presione el botón "Crear una cuenta"
    Then el sistema creará una cuenta con la información brindada

  Scenario: Registrarse incorrectamente
    Given que el usuario no completa la información solicitada o la ingresa incorrectamente en el formulario
    When presione el botón "Crear una cuenta"
    Then el sistema resaltará los espacios erróneos o faltantes
    And se visualizará un mensaje que indique el error
