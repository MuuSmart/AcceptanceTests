Feature: Crear Campaña de Ganado
  Como usuario de la plataforma,
  Quiero crear una campaña para un ganado asignado,
  Para definir parámetros como duración, objetivo y selección de animales o establos

  Scenario: E01 - Creación de campaña
    Given que el usuario está autenticado
    When selecciona la opción de crear una campaña
      And completa los campos: duración, objetivo y selección de animales o establos
    Then el sistema crea la campaña y muestra una confirmación
