Feature: Configuración de Recordatorios  
  Como productor, quiero poder configurar la frecuencia de recordatorios para personalizar el cuidado de mi ganado.

  Scenario Outline: Configurar frecuencia de recordatorios de vacunación
    Given que el productor está autenticado
    And accede a la configuración de recordatorios
    When selecciona la frecuencia "<frecuencia>" para recordatorios de vacunación
    And guarda la configuración
    Then el sistema programa las alertas según la frecuencia "<frecuencia>"
    And envía notificaciones en las fechas programadas

    Examples:
      | frecuencia |
      | Diaria     |
      | Semanal    |
      | Mensual    |