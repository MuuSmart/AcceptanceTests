Feature: Registro de Personal
  Como empresario ganadero,
  Quiero poder registrar a mis empleados,
  Para organizar y gestionar de forma efectiva los recursos humanos de mi empresa

  Scenario: E01 - Registro completo de empleado
    Given que el empresario está autenticado
    When ingresa correctamente todos los datos requeridos para un empleado
    Then el sistema registra al empleado
      And muestra una confirmación exitosa

  Scenario: E02 - Registro incompleto o incorrecto
    Given que el empresario está autenticado
    When intenta registrar a un empleado sin ingresar toda la información esencial
    Then se muestra un mensaje de error indicando la carencia de información requerida