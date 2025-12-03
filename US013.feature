Feature: Registrar Animal con Validación de Datos  
  Como ganadero, quiero que el sistema valide automáticamente la información registrada para evitar errores en mi inventario.

  Scenario Outline: Validación de Campos Obligatorios al Registrar Animal
    Given que el ganadero está autenticado en el sistema
    And accede al formulario de registro de animales
    When intenta registrar un animal dejando el campo "<campo>" vacío
    Then el sistema muestra un mensaje de error indicando que "<campo>" es obligatorio
    And no se guarda el registro del animal

    Examples:
      | campo        |
      | tipo         |
      | edad         |
      | peso         |
      | número       |