Feature: Exportar reportes en formatos estándar  
  Como ganadero, quiero exportar los reportes en formatos estándar (PDF, Excel) para compartirlos con otros.

  Scenario Outline: Exportar reporte de salud en PDF y Excel
    Given que el ganadero ha generado un reporte de salud para el rango de fechas "<fecha_inicio>" a "<fecha_fin>"
    When selecciona la opción "Exportar Reporte"
    Then el sistema ofrece las opciones de descarga en PDF y Excel
    And al seleccionar "<formato>", descarga el archivo correctamente

    Examples:
      | fecha_inicio | fecha_fin   | formato |
      | 2025-10-01  | 2025-10-31  | PDF     |
      | 2025-11-01  | 2025-11-30  | Excel   |