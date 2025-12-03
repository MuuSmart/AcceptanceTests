Feature: Gestión de Personal
  Como empresario ganadero,
  Necesito gestionar la plantilla de empleados,
  Pudiendo agregar o eliminar registros para mantener la base de datos actualizada

  Scenario: E01 - Agregar y eliminar empleados
    Given que el empresario está autenticado
      And accede al módulo de gestión de personal
    When realiza las operaciones de agregar y/o eliminar empleados
    Then el sistema confirma con un mensaje de éxito cada uno de los cambios efectuados
