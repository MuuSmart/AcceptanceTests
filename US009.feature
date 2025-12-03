Feature: Gestión de Campañas
  Como usuario,
  Quiero gestionar (editar o modificar) la campaña creada,
  Para ajustarla según las necesidades y cambios en la planificación

  Scenario: E01 - Gestión para ganadero independiente
    Given que el usuario está autenticado con una campaña creada
    When realiza cambios como añadir/eliminar tiempo, animales, establos o modificar el objetivo
    Then los cambios se reflejan instantáneamente
      And se confirma la actualización

  Scenario: E02 - Gestión para empresa ganadera
    Given que la empresa tiene una campaña activa
    When realiza cambios adicionales como la asignación o eliminación de personal, además de ajustes en el objetivo
    Then el sistema actualiza y confirma los cambios en la campaña
