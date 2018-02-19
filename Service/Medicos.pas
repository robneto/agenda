unit Medicos;

interface

type
  TMedicos = class
  private
    Fcrm: string;
    Fuf: string;
    Fid: integer;
    Fnome: string;
    Fcelular: string;
    procedure Setcelular(const Value: string);
    procedure Setcrm(const Value: string);
    procedure Setid(const Value: integer);
    procedure Setnome(const Value: string);
    procedure Setuf(const Value: string);
    public
      property id: integer read Fid write Setid;
      property nome: string read Fnome write Setnome;
      property crm: string read Fcrm write Setcrm;
      property uf: string read Fuf write Setuf;
      property celular: string read Fcelular write Setcelular;
  end;

implementation

{ TMedicos }

procedure TMedicos.Setcelular(const Value: string);
begin
  Fcelular := Value;
end;

procedure TMedicos.Setcrm(const Value: string);
begin
  Fcrm := Value;
end;

procedure TMedicos.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TMedicos.Setnome(const Value: string);
begin
  Fnome := Value;
end;

procedure TMedicos.Setuf(const Value: string);
begin
  Fuf := Value;
end;

end.
