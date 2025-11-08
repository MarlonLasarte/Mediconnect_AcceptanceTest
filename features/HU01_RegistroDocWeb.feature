Feature: Registro como Doctor en la aplicación web
  Como doctor
  Quiero poder registrarme de manera rápida en la aplicación
  Para poder empezar mi jornada laboral.

  Scenario: Usuario visualiza el formulario de registro de la página web
    Given que el usuario cuenta con el rol de usuario no registrado
    When el usuario selecciona el logo de usuario
    And elige la opción "Registrarse"
    Then el sistema muestra en una nueva página el formulario "Registrarse"
    And el formulario contiene los campos "nombres", "apellidos", "correo electrónico" y "contraseña" los cuales son requeridos
    And el sistema muestra el botón "Crear cuenta"

  Scenario: Usuario se registra en la página web
    Given que el usuario cuenta con el rol de usuario no registrado o invitado
    And el sistema muestra el formulario "Registrarse"
    And el usuario completa los campos "nombres", "apellidos", "correo electrónico" y "contraseña"
    When el usuario da clic al botón "Crear cuenta"
    Then el sistema crea una cuenta con los datos proporcionados
    And el sistema muestra un mensaje de confirmación "Ahora eres parte de la familia. Bienvenido"
