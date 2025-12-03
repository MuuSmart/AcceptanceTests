Feature: Búsqueda de Personal
  Como empresario ganadero,
  Quiero buscar entre los empleados registrados,
  Para localizar y, de ser necesario, gestionar la información de un empleado en específico

  Scenario: E01 - Búsqueda exitosa
    Given que el empresario tiene sesión iniciada
    When realiza la búsqueda utilizando filtros como nombre o cargo
    Then se muestra el empleado que cumple con los criterios de búsqueda
