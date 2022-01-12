unit kgenlarp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Hash, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Clipbrd,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function rimspaziemaiuscolo(nomeinserito: string): string;
var
  str: string;
begin
  str := nomeinserito.ToUpper;
  Result := str.Replace(' ', '');
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  seriale, nome, risultato: string;
begin
  nome := rimspaziemaiuscolo(LabeledEdit1.Text);
  risultato := THashSha1.GetHashString('MarcoLavoie-LARP' + nome);
  risultato := rimspaziemaiuscolo(risultato);
  seriale := risultato.SubString(4 * 1, 4) + '-' + risultato.SubString(4 * 3, 4)
    + '-' + risultato.SubString(4 * 5, 4) + '-' + risultato.SubString(4 * 7, 4)
    + '-' + risultato.SubString(4 * 9, 4);
  Clipboard.AsText := seriale;
  ShowMessage('Chiave di attivazione copiata in memoria!');
end;

end.
