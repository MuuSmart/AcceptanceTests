Feature: Actualizar Información de Bovinos
  Como usuario,
  Quiero gestionar la información de los animales registrados
  Para mantener la base de datos actualizada y precisa

  Scenario: E01 - Actualización exitosa
    Given que el usuario está autenticado y accede al módulo de gestión de animales
    When actualiza la información requerida de un bovino y guarda los cambios
    Then el sistema confirma la actualización mediante un mensaje de éxito
