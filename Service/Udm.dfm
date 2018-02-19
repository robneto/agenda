object dm: Tdm
  OldCreateOrder = False
  Height = 191
  Width = 319
  object BD: TADOConnection
    Connected = True
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=mySQL'
    LoginPrompt = False
    Left = 15
    Top = 16
  end
  object QMedicos: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM medicos'
      'WHERE id = :id')
    Left = 15
    Top = 72
    object QMedicosid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QMedicosnome: TStringField
      FieldName = 'nome'
    end
    object QMedicoscrm: TIntegerField
      FieldName = 'crm'
    end
    object QMedicosuf_crm: TStringField
      FieldName = 'uf_crm'
      Size = 2
    end
    object QMedicosCelular: TStringField
      FieldName = 'Celular'
      Size = 15
    end
    object QMedicosidusr: TIntegerField
      FieldName = 'idusr'
    end
  end
  object dsMedicos: TDataSource
    DataSet = QMedicos
    Left = 16
    Top = 120
  end
end
