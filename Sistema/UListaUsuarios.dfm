object FUsuarios: TFUsuarios
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Usu'#225'rios do Sistema'
  ClientHeight = 371
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 85
    Width = 639
    Height = 245
    Align = alClient
    DataSource = dm.dsUsuarios
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
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
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usrnome'
        Title.Caption = 'Usu'#225'rio'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'e-Mail'
        Width = 352
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 639
    Height = 41
    Align = alTop
    Caption = 'Lista de Usu'#225'rios do Sistema'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -29
    Font.Name = 'Cambria'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 440
    ExplicitTop = 8
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 330
    Width = 639
    Height = 41
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 424
    ExplicitTop = 336
    ExplicitWidth = 185
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
      Left = 544
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
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 639
    Height = 44
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ExplicitTop = 35
    object Label1: TLabel
      Left = 16
      Top = 5
      Width = 43
      Height = 13
      Caption = 'Filtro por'
    end
    object Label2: TLabel
      Left = 145
      Top = 4
      Width = 236
      Height = 13
      Caption = 'Digite o que deseja pesquisar e pressione [enter]'
    end
    object cbFiltro: TComboBox
      Left = 14
      Top = 20
      Width = 127
      Height = 21
      TabOrder = 0
    end
    object edtPesquisa: TEdit
      Left = 142
      Top = 20
      Width = 477
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edtPesquisaKeyPress
    end
    object Edit2: TEdit
      Left = 620
      Top = 20
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
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 1
      Top = 20
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
      TabOrder = 3
    end
  end
end
