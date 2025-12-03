Feature: Buscar Información de Bovinos
  Como usuario,
  Quiero poder buscar animales registrados
  Para acceder de forma rápida y ordenada a la información necesaria

  Scenario: E01 - Búsqueda exitosa
    Given que el usuario está autenticado en la plataforma
    When realiza una búsqueda desde el módulo de búsqueda de bovinos con filtros y criterios
    Then el sistema muestra una lista clara y ordenada con los resultados correspondientes
