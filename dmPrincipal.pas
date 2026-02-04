unit dmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TData_Module = class(TDataModule)
    fdConexao: TFDConnection;
    fdqAluno: TFDQuery;
    fdtAluno: TFDTable;
    fdtAlunonome: TStringField;
    fdtAlunocartao: TMemoField;
    fdtAlunofotos: TBlobField;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    fdtAlunocodigo: TFDAutoIncField;
    fdtAlunoautorizadocedo: TStringField;
    fdtAlunoRM: TStringField;
    fdtAlunoautorizado13hrs: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Data_Module: TData_Module;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
