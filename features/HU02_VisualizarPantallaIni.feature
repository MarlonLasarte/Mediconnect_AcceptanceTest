Feature: Visualizar la pantalla inicial e información de los mensajes recibidos
  Como paciente,
  Quiero conocer la ventana inicial del menú,
  Para saber hacia qué opciones puedo dirigirme.

  Scenario: Usuario visualiza la carga completa de la ventana inicial de la página web
    Given que el usuario ha iniciado sesión correctamente
    And el sistema valida sus credenciales
    When accede a la aplicación
    Then el sistema muestra la ventana inicial con las secciones principales:
      | Secciones        |
      | Mensajes         |
      | Mi Bitácora      |
      | Citas            |
      | Configuración    |

  Scenario: Usuario visualiza la carga completa de la página web
    Given que el usuario cuenta con sesión iniciada correctamente
    When accede al portal principal
    Then el sistema carga la página web de manera completa
    And se muestran todos los elementos de la interfaz inicial (menú, secciones principales, barra de navegación y notificaciones)
