Feature: Asociar Empleados a Campaña
  Como empresario ganadero,
  Quiero asignar empleados a una campaña,
  Para organizar mejor el personal durante la ejecución de esta

  Scenario: E01 - Asociación exitosa
    Given que el empresario ganadero está autenticado
    When selecciona una campaña existente
      And asigna empleados válidos
    Then los empleados quedan asociados a la campaña
      And se muestra una notificación de éxito
