Feature: Disponibilidad Offline  
  Como ganadero, quiero poder registrar datos sin conexión, para seguir usando el sistema en zonas rurales.

  Scenario Outline: Registro offline y sincronización posterior
    Given que el ganadero está en una zona sin internet
    When registra un nuevo animal con los datos:
      | tipo   | edad | peso | identificador |
      | <tipo> | <edad> | <peso> | <id> |
    Then el sistema guarda el registro localmente sin errores
    And cuando se restablece la conexión, sincroniza automáticamente con la nube

    Examples:
      | tipo   | edad | peso | id    |
      | Vacuno | 3    | 350  | BOV-001 |
      | Porcino| 1    | 80   | POR-022 |