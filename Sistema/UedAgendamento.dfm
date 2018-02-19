object FedAgendamento: TFedAgendamento
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Agendamento'
  ClientHeight = 226
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 41
    Align = alTop
    Caption = 'Agendamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -29
    Font.Name = 'Cambria'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 432
  end
  object Panel2: TPanel
    Left = 0
    Top = 177
    Width = 582
    Height = 49
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 432
    object BitBtn1: TBitBtn
      Left = 489
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      ModalResult = 8
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 17
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkAll
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 582
    Height = 136
    Align = alClient
    TabOrder = 2
    ExplicitTop = 47
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 10
      Height = 13
      Caption = 'Id'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 49
      Height = 13
      Caption = 'idpaciente'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 88
      Width = 41
      Height = 13
      Caption = 'idmedico'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 77
      Top = 8
      Width = 78
      Height = 13
      Caption = 'DtAgendamento'
      FocusControl = DBEdit4
    end
    object Label7: TLabel
      Left = 77
      Top = 88
      Width = 78
      Height = 13
      Caption = 'Nome do M'#233'dico'
    end
    object Label8: TLabel
      Left = 333
      Top = 88
      Width = 22
      Height = 13
      Caption = 'CRM'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 435
      Top = 88
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 471
      Top = 88
      Width = 33
      Height = 13
      Caption = 'Celular'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 77
      Top = 48
      Width = 86
      Height = 13
      Caption = 'Nome do Paciente'
    end
    object Label12: TLabel
      Left = 333
      Top = 48
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit12
    end
    object Label13: TLabel
      Left = 426
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Celular'
      FocusControl = DBEdit13
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 24
      Width = 59
      Height = 21
      TabStop = False
      DataField = 'id'
      DataSource = dm.dsAgendamentos
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 64
      Width = 59
      Height = 21
      TabStop = False
      DataField = 'idpaciente'
      DataSource = dm.dsAgendamentos
      Enabled = False
      TabOrder = 4
      OnChange = DBEdit2Change
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 104
      Width = 59
      Height = 21
      TabStop = False
      DataField = 'idmedico'
      DataSource = dm.dsAgendamentos
      Enabled = False
      TabOrder = 7
      OnChange = DBEdit3Change
    end
    object DBEdit4: TDBEdit
      Left = 77
      Top = 24
      Width = 136
      Height = 21
      DataField = 'DtAgendamento'
      DataSource = dm.dsAgendamentos
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 219
      Top = 28
      Width = 56
      Height = 17
      Caption = 'Retorno'
      DataField = 'retorno'
      DataSource = dm.dsAgendamentos
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 333
      Top = 104
      Width = 101
      Height = 21
      DataField = 'CRM'
      DataSource = dm.dsAgendamentos
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 435
      Top = 104
      Width = 30
      Height = 21
      DataField = 'UF'
      DataSource = dm.dsAgendamentos
      TabOrder = 9
    end
    object DBEdit10: TDBEdit
      Left = 467
      Top = 104
      Width = 97
      Height = 21
      DataField = 'CelMedico'
      DataSource = dm.dsAgendamentos
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 333
      Top = 64
      Width = 90
      Height = 21
      DataField = 'FonePaciente'
      DataSource = dm.dsAgendamentos
      TabOrder = 5
    end
    object DBEdit13: TDBEdit
      Left = 426
      Top = 64
      Width = 90
      Height = 21
      DataField = 'CelularPaciente'
      DataSource = dm.dsAgendamentos
      TabOrder = 6
    end
    object DBrgSituacao: TDBRadioGroup
      Left = 281
      Top = 4
      Width = 283
      Height = 41
      Caption = 'Situa'#231#227'o'
      Columns = 3
      DataField = 'situacao'
      DataSource = dm.dsAgendamentos
      Items.Strings = (
        'Agendado'
        'Atendido'
        'Cancelado')
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 77
      Top = 64
      Width = 254
      Height = 21
      DataField = 'idpaciente'
      DataSource = dm.dsAgendamentos
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dm.dsPacientes
      TabOrder = 11
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 77
      Top = 104
      Width = 254
      Height = 21
      DataField = 'idmedico'
      DataSource = dm.dsAgendamentos
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dm.dsMedicos
      TabOrder = 12
    end
  end
end
