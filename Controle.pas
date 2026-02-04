unit Controle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TFormulario_Controle = class(TForm)
    Panel_Base: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    Grid_Controle: TDBGrid;
    Label1: TLabel;
    edtFiltro: TEdit;
    Source_Controle: TDataSource;
    Image_Cadastrar: TImage;
    Image_Excluir: TImage;
    btnFiltro: TBitBtn;
    Image_Lista_Cliente: TImage;
    procedure Image_Lista_ClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image_CadastrarClick(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure edtFiltroChange(Sender: TObject);
    procedure Image_ExcluirClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formulario_Controle: TFormulario_Controle;
   CampoFiltro : string;

implementation

  uses

  dmPrincipal, CadastraCliente ;

{$R *.dfm}



procedure TFormulario_Controle.btnFiltroClick(Sender: TObject);
begin

   if Source_Controle.DataSet.FieldByName(CampoFiltro) is TStringField then begin
         Source_Controle.DataSet.Filter := CampoFiltro+' like '+ QuotedStr('%'+edtFiltro.Text+'%');
   end
   else begin
         Source_Controle.DataSet.Filter := CampoFiltro+' = '+ edtFiltro.Text;

   end;
  Source_Controle.DataSet.Filtered := true;

  edtFiltro.SetFocus;
end;

procedure TFormulario_Controle.edtFiltroChange(Sender: TObject);
begin
if length(edtFiltro.Text) = 0  then begin
     btnFiltro.Enabled := false;
     Source_Controle.DataSet.Filtered := false;
  end
  else begin
     btnFiltro.Enabled := true;
  end;
end;

procedure TFormulario_Controle.FormShow(Sender: TObject);
begin
Source_Controle.DataSet.Open;

   Label1.Caption := Grid_Controle.Columns[0].Title.Caption+': ';
   edtFiltro.Clear;
   CampoFiltro := Grid_Controle.Columns[0].FieldName;

   Source_Controle.DataSet.Filtered := false;

   dmPrincipal.Data_Module.fdqAluno.Active := True;

end;

procedure TFormulario_Controle.Image6Click(Sender: TObject);
begin

   if Source_Controle.DataSet.FieldByName(CampoFiltro) is TStringField then begin
         // define a regra para campos de texto com like do filtro
         Source_Controle.DataSet.Filter := CampoFiltro+' like '+ QuotedStr('%'+edtFiltro.Text+'%');
   end
   else begin
        // define a regra para campos numericos, datas, etc SEM like do filtro
         Source_Controle.DataSet.Filter := CampoFiltro+' = '+ edtFiltro.Text;

   end;
  // ativa o filtro
  Source_Controle.DataSet.Filtered := true;

  edtFiltro.SetFocus;
end;

procedure TFormulario_Controle.Image_CadastrarClick(Sender: TObject);
begin

if Source_Controle.DataSet = Data_Module.fdqAluno then begin

     Cadastro_Cliente.ShowModal;
end;

end;

procedure TFormulario_Controle.Image_ExcluirClick(Sender: TObject);
begin

if Source_Controle.DataSet = Data_Module.fdqAluno then
  begin
     if Source_Controle.DataSet.RecordCount = 0 then
    begin
         MessageDlg('Não existe registro para ser excluído!',mtInformation,[mbOk],0);

     end;

    if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then


   begin


          Source_Controle.DataSet.delete;

        end;


  end;
end;

procedure TFormulario_Controle.Image_Lista_ClienteClick(Sender: TObject);
begin


   dmPrincipal.Data_Module.fdqAluno.Active := True;

   Source_Controle.DataSet := Data_Module.fdqAluno;

end;




end.
