unit CadastraCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, dmPrincipal;

type
  TCadastro_Cliente = class(TForm)
    tpanelC: TPanel;
    GroupBox1: TGroupBox;
    panelb: TPanel;
    Image_Fechar: TImage;
    Image_OK: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Source_aluno: TDataSource;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Image_FecharClick(Sender: TObject);
    procedure Image_OKClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Cliente: TCadastro_Cliente;

implementation



{$R *.dfm}

procedure TCadastro_Cliente.BitBtn1Click(Sender: TObject);
begin

self.Close;

end;


procedure TCadastro_Cliente.BitBtn2Click(Sender: TObject);
begin

// Data_Module.Query_Insert_Pessoa.Edit;
// Data_Module.Query_Inserir_Clientes.Edit;

      //Data_Module.Query_Insert_Pessoa.Params.

      dmPrincipal.Data_Module.fdqAluno.Post;


end;

procedure TCadastro_Cliente.DBEdit1Change(Sender: TObject);
begin
DBEdit1.Enabled := True
end;

procedure TCadastro_Cliente.Image_FecharClick(Sender: TObject);
begin

self.Close;

end;

procedure TCadastro_Cliente.Image_OKClick(Sender: TObject);
begin
            Data_Module.fdqAluno.append;
            dmPrincipal.Data_Module.fdqAluno.Edit;
        Data_Module.fdqAluno.FieldByName('Nome').Value := DBEdit1.Text;
        Data_Module.fdqAluno.FieldByName('autorizado13hrs').Value := DBComboBox1.Text;
        Data_Module.fdqAluno.FieldByName('autorizadocedo').Value := DBComboBox2.Text;
        Data_Module.fdqAluno.FieldByName('RM').Value := DBEdit2.Text;


dmPrincipal.Data_Module.fdqAluno.Post;

 Application.MessageBox('O seu usuário foi cadastrado com sucesso!','Cadastrado!',mb_Ok + MB_OK + MB_SYSTEMMODAL);

end;





end.
