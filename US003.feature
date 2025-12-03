Feature: Gestión de registros de vacunas
  Como usuario
  Quiero ver y editar registros de vacunas aplicadas
  Para mantener la información actualizada

  Scenario: Ver historial de vacunas de un animal
    Given que el usuario selecciona un animal con vacunas registradas
    When visualiza el historial de vacunas
    Then debe mostrarse una lista con todas las vacunas aplicadas al animal

  Scenario: Editar registro de vacunación
    Given que el usuario selecciona un registro de vacunación existente
    When actualiza la fecha de aplicación
    And presiona "Guardar cambios"
    Then el sistema debe actualizar correctamente la información
    And debe mostrarse un mensaje de confirmación

  Scenario: Eliminar registro de vacunación
    Given que el usuario desea eliminar un registro de vacunación
    When presiona el botón "Eliminar"
    Then el sistema debe solicitar confirmación
    And al confirmar, debe eliminar el registro
    And debe mostrarse un mensaje indicando éxito
