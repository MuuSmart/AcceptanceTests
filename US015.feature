Feature: Alertas en caso de fallos de conexión  
  Como productor, quiero recibir notificaciones de salud de manera confiable aunque falle la conexión, para no olvidar tareas importantes.

  Scenario Outline: Sincronización de alertas offline al recuperar conexión
    Given que el productor registra una vacuna pendiente mientras está sin conexión
    And la alerta se guarda localmente en el dispositivo
    When el dispositivo recupera conexión a internet
    Then el sistema sincroniza automáticamente la alerta con la nube
    And la alerta aparece en todos los dispositivos asociados a la cuenta

    Examples:
      | vacuna           | fecha_recordatorio | dispositivo |
      | Desparasitación  | 2025-11-15        | Móvil       |
      | Vacuna Triple    | 2025-11-20        | Tablet      |