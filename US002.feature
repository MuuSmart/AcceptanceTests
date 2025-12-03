Feature: Búsqueda de vacunas
  Como usuario
  Quiero poder buscar vacunas registradas
  Para consultar rápidamente la información sobre ellas

  Scenario: Buscar vacuna por nombre
    Given que existen vacunas registradas en el sistema
    When el usuario ingresa "Vacuna A" en el campo de búsqueda
    And presiona el botón "Buscar"
    Then debe mostrarse una lista con las vacunas cuyo nombre coincida con "Vacuna A"

  Scenario: Buscar vacuna que no existe
    Given que existen vacunas registradas en el sistema
    When el usuario busca "Vacuna Desconocida"
    Then debe mostrarse un mensaje indicando que no se encontraron resultados
