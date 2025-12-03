Feature: IA Predictiva para Salud y Alimentación  
  Como ganadero, quiero que la aplicación me brinde sugerencias predictivas sobre la salud y alimentación de mis animales, basadas en datos históricos.

  Scenario Outline: Sugerencia de dieta optimizada por IA
    Given que el sistema tiene el historial de peso y alimentación del animal "<animal_id>"
    And el animal tiene una tendencia de crecimiento de "<crecimiento>" kg/mes
    When el ganadero consulta el módulo de IA para recomendaciones de dieta
    Then el sistema sugiere un plan de alimentación con "<alimento_recomendado>" y "<cantidad>" kg/día
    And justifica la recomendación basada en datos históricos

    Examples:
      | animal_id | crecimiento | alimento_recomendado | cantidad |
      | BOV-001   | 25          | Maíz + Soja          | 8.5      |
      | BOV-002   | 30          | Alfalfa + Suplemento | 10.0     |