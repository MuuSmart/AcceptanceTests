Feature: Alertas de sobreconsumo o desperdicio  
  Como productor, quiero que el sistema sugiera alertas de sobreconsumo o desperdicio basadas en registros previos.

  Scenario Outline: Generar alerta por sobreconsumo de alimento
    Given que el productor tiene un historial de consumo promedio de "<consumo_promedio>" kg/día
    When registra un consumo de "<consumo_actual>" kg en el día
    And el consumo actual supera en más del 20% el promedio histórico
    Then el sistema genera una alerta de sobreconsumo
    And sugiere ajustar la dieta para evitar desperdicios

    Examples:
      | consumo_promedio | consumo_actual |
      | 100              | 130            |
      | 80               | 105            |
      | 150              | 190            |