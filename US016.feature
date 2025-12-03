Feature: Generar reportes centralizados  
  Como ganadero, quiero generar reportes con datos centralizados, para tomar decisiones rápidas y confiables.

  Scenario Outline: Generar reporte de producción mensual
    Given que el ganadero está autenticado
    And tiene registros de producción del mes "<mes>"
    When solicita un reporte de producción para el mes "<mes>"
    Then el sistema genera un reporte consolidado con:
      | total_animales | litros_leche | peso_promedio |
      | <total>        | <litros>     | <peso>        |
    And permite exportar el reporte en formato PDF o Excel

    Examples:
      | mes       | total | litros | peso  |
      | Octubre   | 50    | 1200   | 450   |
      | Noviembre | 55    | 1300   | 460   |