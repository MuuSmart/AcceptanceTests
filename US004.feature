Feature: Registro de Bovino
  Como usuario autenticado,
  Quiero registrar un bovino en un lote específico
  Para tener control detallado de la crianza y manejo del animal

  Scenario: E01 - Registro completo de un bovino
    Given que un usuario está autenticado
    When selecciona la opción de registrar un nuevo bovino
    And ingresa los datos: procedencia, raza, peso inicial, fecha de registro, fotografía, estado de salud, fecha de nacimiento o edad, y observaciones
    Then el sistema genera un ID único para el bovino
    And asocia el bovino a un lote específico
    And confirma el registro exitoso con un mensaje

  Scenario: E02 - Registro sin autenticación
    Given que un usuario no está autenticado
    When intenta acceder al módulo de gestión de lotes para registrar un bovino
    Then el sistema redirige al usuario a la página de inicio de sesión

  Scenario: E03 - Registro incompleto
    Given que un usuario autenticado se encuentra en el formulario de registro de bovino
    When envía el formulario sin completar todos los campos obligatorios
    Then el sistema muestra un mensaje de error solicitando la información faltante

  Scenario: E04 - Registro con datos inválidos
    Given que un usuario autenticado intenta registrar un bovino
    When ingresa datos con un formato incorrecto o no conforme a lo esperado
    Then el sistema rechaza el registro
    And muestra un mensaje de error especificando el formato correcto
