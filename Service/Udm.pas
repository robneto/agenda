unit Udm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdm = class(TDataModule)
    BD: TADOConnection;
    QMedicos: TADOQuery;
    QMedicosid: TAutoIncField;
    QMedicosnome: TStringField;
    QMedicoscrm: TIntegerField;
    QMedicosuf_crm: TStringField;
    QMedicosCelular: TStringField;
    QMedicosidusr: TIntegerField;
    dsMedicos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
