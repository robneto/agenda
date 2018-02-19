object dm: Tdm
  OldCreateOrder = False
  Height = 222
  Width = 360
  object BD: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=mySQL' +
      ';Initial Catalog=agenda'
    LoginPrompt = False
    Left = 8
    Top = 8
  end
  object QLogin: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'usrnome'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'senha'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'SELECT id, nome, usrnome'
      '  FROM usuarios'
      'WHERE usrnome = :usrnome'
      '     AND senha = :senha')
    Left = 64
    Top = 10
    object QLoginid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QLoginnome: TStringField
      FieldName = 'nome'
    end
    object QLoginusrnome: TStringField
      FieldName = 'usrnome'
      Size = 15
    end
  end
  object QUsuarios: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM usuarios '
      'WHERE 1 = 1'
      '')
    Left = 64
    Top = 62
    object QUsuariosid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QUsuariosnome: TStringField
      FieldName = 'nome'
    end
    object QUsuariosusrnome: TStringField
      FieldName = 'usrnome'
      Size = 15
    end
    object QUsuariosemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object QUsuariossenha: TStringField
      FieldName = 'senha'
      Size = 10
    end
  end
  object dsUsuarios: TDataSource
    AutoEdit = False
    DataSet = QUsuarios
    Left = 128
    Top = 62
  end
  object QPacientes: TADOQuery
    Connection = BD
    CursorType = ctStatic
    BeforePost = QPacientesBeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM pacientes '
      'WHERE 1 = 1'
      '')
    Left = 64
    Top = 112
    object QPacientesid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QPacientesnome: TStringField
      FieldName = 'nome'
    end
    object QPacientesfone: TStringField
      FieldName = 'fone'
      EditMask = '(##)####-####'
      Size = 15
    end
    object QPacientesCelular: TStringField
      FieldName = 'Celular'
      EditMask = '(##)#####-####'
      Size = 15
    end
    object QPacientesObs: TStringField
      FieldName = 'Obs'
      Size = 100
    end
    object QPacientesidusr: TIntegerField
      FieldName = 'idusr'
    end
  end
  object dsPacientes: TDataSource
    AutoEdit = False
    DataSet = QPacientes
    Left = 128
    Top = 112
  end
  object QMedicos: TADOQuery
    Connection = BD
    CursorType = ctStatic
    BeforePost = QMedicosBeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM medicos '
      'WHERE 1 = 1'
      '')
    Left = 64
    Top = 160
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
      EditMask = '(##)#####-####'
      Size = 15
    end
    object QMedicosidusr: TIntegerField
      FieldName = 'idusr'
    end
  end
  object dsMedicos: TDataSource
    AutoEdit = False
    DataSet = QMedicos
    Left = 128
    Top = 160
  end
  object dsAgendamentos: TDataSource
    AutoEdit = False
    DataSet = QAgendamentos
    Left = 288
    Top = 64
  end
  object QAgendamentos: TADOQuery
    Connection = BD
    CursorType = ctStatic
    AfterInsert = QAgendamentosAfterInsert
    BeforePost = QAgendamentosBeforePost
    Parameters = <
      item
        Name = 'dataini'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'datafim'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'idmedico'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT a.*, m.nome as NomeMedico, m.crm as CRM, m.uf_crm as UF, ' +
        'm.Celular as CelMedico, p.nome as NomePaciente, '
      '       p.fone as FonePaciente, p.Celular as CelularPaciente'
      '  FROM agendamentos   a'
      ' INNER JOIN medicos   m ON a.idmedico = m.id'
      ' INNER JOIN pacientes p ON a.idpaciente = p.id'
      ' INNER JOIN usuarios  u ON a.idusr = u.id'
      
        'WHERE a.DtAgendamento between date_format(str_to_date(:dataini, ' +
        #39'%d/%m/%Y'#39'), '#39'%Y-%m-%d'#39') and'
      
        '                              date_format(str_to_date(:datafim, ' +
        #39'%d/%m/%Y'#39'), '#39'%Y-%m-%d'#39')'
      '  and a.idmedico = :idmedico'
      '')
    Left = 288
    Top = 16
    object QAgendamentosid: TAutoIncField
      FieldName = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QAgendamentosidpaciente: TIntegerField
      FieldName = 'idpaciente'
      KeyFields = 'id'
    end
    object QAgendamentosidmedico: TIntegerField
      FieldName = 'idmedico'
      KeyFields = 'id'
    end
    object QAgendamentosDtAgendamento: TDateTimeField
      FieldName = 'DtAgendamento'
      KeyFields = 'id'
      EditMask = '##/##/#### ##:##'
    end
    object QAgendamentossituacao: TStringField
      FieldName = 'situacao'
      KeyFields = 'id'
      Size = 1
    end
    object QAgendamentosretorno: TBooleanField
      FieldName = 'retorno'
      KeyFields = 'id'
    end
    object QAgendamentosidusr: TIntegerField
      FieldName = 'idusr'
      KeyFields = 'id'
    end
    object QAgendamentosNomeMedico: TStringField
      FieldName = 'NomeMedico'
      ProviderFlags = []
    end
    object QAgendamentosCRM: TIntegerField
      FieldName = 'CRM'
      ProviderFlags = []
    end
    object QAgendamentosUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object QAgendamentosCelMedico: TStringField
      FieldName = 'CelMedico'
      ProviderFlags = []
      EditMask = '(##)#####-####'
      Size = 15
    end
    object QAgendamentosNomePaciente: TStringField
      FieldName = 'NomePaciente'
      ProviderFlags = []
    end
    object QAgendamentosFonePaciente: TStringField
      FieldName = 'FonePaciente'
      ProviderFlags = []
      EditMask = '(##)####-####'
      Size = 15
    end
    object QAgendamentosCelularPaciente: TStringField
      FieldName = 'CelularPaciente'
      ProviderFlags = []
      EditMask = '(##)#####-####'
      Size = 15
    end
  end
end
