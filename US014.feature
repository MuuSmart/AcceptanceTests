Feature: Registro y Consulta de Historia Clínica  
  Como ganadero, quiero registrar y consultar el historial clínico de cada animal (vacunas, enfermedades, tratamientos), para dar seguimiento a su salud individual.

  Scenario Outline: Registrar una nueva vacuna en el historial clínico
    Given que el ganadero está autenticado
    And tiene un animal registrado con ID "<animal_id>"
    When ingresa los datos de la vacuna:
      | nombre           | fecha_aplicacion | proxima_dosis |
      | <vacuna_nombre>  | <fecha>          | <proxima>     |
    Then el sistema guarda la vacuna en el historial clínico del animal "<animal_id>"
    And muestra un mensaje de confirmación con la fecha y hora del registro

    Examples:
      | animal_id | vacuna_nombre   | fecha       | proxima       |
      | 1         | Fiebre Aftosa   | 2025-10-01  | 2026-04-01    |
      | 2         | Brucelosis      | 2025-10-05  | 2026-10-05    |