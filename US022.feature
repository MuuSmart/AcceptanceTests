Feature: Servicio aislado de vacunaciones  
  Como ganadero, quiero que el servicio de vacunaciones esté aislado, para garantizar estabilidad aunque otros módulos fallen.

  Scenario Outline: Acceder al servicio de vacunaciones mientras otros módulos fallan
    Given que el módulo de gestión de ganado está experimentando fallos
    When el ganadero intenta acceder al módulo de vacunaciones
    Then puede registrar, consultar y actualizar vacunas sin interrupciones
    And el sistema responde en menos de 2 segundos

    Examples:
      | acción               | respuesta_esperada                |
      | Registrar vacuna     | Confirmación en < 2 segundos      |
      | Consultar historial  | Listado cargado en < 2 segundos   |
      | Actualizar vacuna    | Actualización exitosa en < 2 segundos |