object FAgendamentos: TFAgendamentos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Agendamentos'
  ClientHeight = 430
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 41
    Align = alTop
    Caption = 'Lista de Agendamentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -29
    Font.Name = 'Cambria'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 747
    Height = 84
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 46
      Width = 43
      Height = 13
      Caption = 'Filtro por'
    end
    object Label2: TLabel
      Left = 143
      Top = 46
      Width = 236
      Height = 13
      Caption = 'Digite o que deseja pesquisar e pressione [enter]'
    end
    object sbExecutar: TSpeedButton
      Left = 423
      Top = 18
      Width = 23
      Height = 23
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        993300993300993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF993300A7591A993300993300FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300A85C1CA85C1C99
        3300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF993300A95C1DAF6929AA5B22993300FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF993300B26D35BC824DBE8554B06434993300FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300BD8253CA9D73
        CFA57ECC9E79AE5F33993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF993300C99772D9B799DDBFA4E1C7AFD3A98E993300FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF993300C7906FE7D2BEEBDACAEFE2D5F4EAE1CF
        A087993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300CFA186F5EC
        E4F9F4EFFCFAF8FDFAF8F6E9E0C38563993300FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF993300D7B09BFDF9F6FBF4EDF9EEE3F7E8DAF5E3D0E2BDA1993300FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF993300DCB59EF9ECE0F6E6D6F5E1CDF3DBC3993300
        993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF993300E1BFABF8EADDF6E4D3F4DFCAF2D9C0EA
        C9ABA44716FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300F3DDC7F1D7
        BDEFD1B4EDCCAAEBC6A1E4B78D993300FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF993300EDCAA7EBC49EE9BE94E7B88BE5B381E3AD78993300FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF993300E6B687E4B17EE2AB75E0A56BDEA062
        DC9A58993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300DB9C62DD
        9E5FDB9855D9924BD88D44D78B40993300FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF993300993300993300993300993300993300993300993300FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = sbExecutarClick
    end
    object Label3: TLabel
      Left = 15
      Top = 3
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label4: TLabel
      Left = 156
      Top = 3
      Width = 33
      Height = 13
      Caption = 'M'#233'dico'
    end
    object Label5: TLabel
      Left = 87
      Top = 3
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object cbFiltro: TComboBox
      Left = 13
      Top = 61
      Width = 127
      Height = 21
      TabOrder = 3
    end
    object edtPesquisa: TEdit
      Left = 141
      Top = 61
      Width = 586
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = edtPesquisaKeyPress
    end
    object Edit2: TEdit
      Left = 728
      Top = 61
      Width = 17
      Height = 21
      TabStop = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 1
      Top = 61
      Width = 12
      Height = 21
      TabStop = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object meDtIni: TMaskEdit
      Left = 13
      Top = 19
      Width = 69
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object meDtFim: TMaskEdit
      Left = 84
      Top = 19
      Width = 69
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 156
      Top = 19
      Width = 267
      Height = 21
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dm.dsMedicos
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 389
    Width = 747
    Height = 41
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object btnInc: TButton
      Left = 14
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnIncClick
    end
    object btnAlt: TButton
      Left = 94
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnAltClick
    end
    object btnExcl: TButton
      Left = 174
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnExclClick
    end
    object BitBtn1: TBitBtn
      Left = 658
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 125
    Width = 747
    Height = 264
    Align = alClient
    DataSource = dm.dsAgendamentos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'Id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DtAgendamento'
        Title.Caption = 'Agendamento'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomePaciente'
        Title.Caption = 'Paciente'
        Width = 203
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FonePaciente'
        Title.Caption = 'Telefone'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CelularPaciente'
        Title.Caption = 'Celular'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'situacao'
        Title.Caption = 'Sit'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'retorno'
        Title.Caption = 'Ret'
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeMedico'
        Title.Caption = 'M'#233'dico'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRM'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CelMedico'
        Title.Caption = 'Celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idmedico'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idpaciente'
        Visible = True
      end>
  end
end
