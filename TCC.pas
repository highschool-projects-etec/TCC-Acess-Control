unit TCC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, about, Controle, dmPrincipal, Data.DB, Vcl.DBCtrls,
  Vcl.Mask, gerador, System.ImageList, Vcl.ImgList;

type
  TFrmSeguranca = class(TForm)
    painel: TPanel;
    Edit1: TEdit;
    menu: TMainMenu;
    Cadastro1: TMenuItem;
    Sobre1: TMenuItem;
    Carteirinhas1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    dsinicial: TDataSource;
    Edit2: TEdit;
    Image1: TImage;
    GeradordeCdigos1: TMenuItem;
    btnLimpar: TBitBtn;
    ImageList1: TImageList;

    procedure Carteirinhas1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure GeradordeCdigos1Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmSeguranca: TFrmSeguranca;

implementation

{$R *.dfm}




procedure TFrmSeguranca.btnLimparClick(Sender: TObject);
begin
edit1.Clear;
edit2.Clear;
painel.color := clwhite;
image1.Visible:=false;

 edit1.CanFocus;
end;

procedure TFrmSeguranca.Carteirinhas1Click(Sender: TObject);
begin
Formulario_Controle.Showmodal;
end;



procedure TFrmSeguranca.Edit1Change(Sender: TObject);
begin
if Edit1.Text = '00000000' then begin
  painel.Color := clRed;
  end
  else if edit1.text = '00017327' then  begin
    edit2.text := 'Marco Antônio Oliveira Campioti ';
   image1.Picture.LoadFromFile('D:\TCC cartão\user3.png');
    painel.Color := clRed;
    image1.Visible := true;

  end
    else if edit1.text = '000017327' then  begin
    edit2.text := 'Marco Antônio Oliveira Campioti ';
   image1.Picture.LoadFromFile('D:\TCC cartão\user3.png');
    painel.Color := clRed;
    image1.Visible := true;
    end

  else if edit1.text = '00015072' then  begin
    edit2.text := 'Marcos Henrique Maziero da Silva'  ;
    image1.Picture.LoadFromFile('D:\TCC cartão\use4.png');
    painel.Color := clRed;
    image1.Visible := true;

   end
  else begin
       painel.Color := clGreen;
end;

   while (Length(Edit1.Text) < 8) or (Length(Edit1.Text) > 8) do
     begin
       painel.Color := clRed;
       Exit;
     end;
      while (Length(Edit1.Text) >=9) do
      begin
        edit1.CutToClipboard;
        Exit;
      end;


     if edit1.Text = '00019601' then begin
  edit2.Text := 'Marcelo Lopes de Almeida Junior';
  image1.Picture.LoadFromFile('D:\TCC cartão\user2.png');
  image1.Visible := true;

  end;

    if edit1.Text = '00017415' then begin
  edit2.text := 'João Paulo Ribeiro Eduardo';
  image1.Picture.LoadFromFile('D:\TCC cartão\user1.png');
  image1.Visible := true;
end;
end;

procedure TFrmSeguranca.FormShow(Sender: TObject);
begin
edit1.CanFocus;
end;

procedure TFrmSeguranca.GeradordeCdigos1Click(Sender: TObject);
begin
 CodigoBarra.showmodal;
end;

procedure TFrmSeguranca.Sobre1Click(Sender: TObject);
begin
AboutBox.ShowModal;
end;

end.
