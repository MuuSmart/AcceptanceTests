Feature: Agregar vacuna
  Como usuario
  Quiero poder registrar una nueva vacuna
  Para llevar un control de las vacunas administradas a los animales

  Scenario: Agregar una vacuna válida
    Given que el usuario se encuentra en el formulario de registro de vacunas
    When ingresa el nombre "Vacuna A", fabricante "Laboratorio X", y fecha de vencimiento "2025-12-31"
    And presiona el botón "Guardar"
    Then la vacuna "Vacuna A" debe ser registrada correctamente
    And debe mostrarse un mensaje de éxito

  Scenario: Agregar vacuna sin nombre
    Given que el usuario se encuentra en el formulario de registro de vacunas
    When deja el campo de nombre vacío y completa los demás campos
    And presiona el botón "Guardar"
    Then debe mostrarse un mensaje de error indicando que el nombre es obligatorio

  Scenario: Agregar vacuna con fecha vencida
    Given que el usuario se encuentra en el formulario de registro de vacunas
    When ingresa una fecha de vencimiento anterior a la actual
    And presiona el botón "Guardar"
    Then debe mostrarse un mensaje de error indicando que la fecha no puede estar vencida
