unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Unit3, Unit4;

type
  THauptseite = class(TForm)
    Button1: TButton;
    ZurückZurStartseite: TButton;
    TerminierenKnopf: TButton;
    Button4: TButton;
    Image1: TImage;
    procedure ZurückZurStartseiteClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TerminierenKnopfClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Hauptseite: THauptseite;

implementation
uses Unit1;

{$R *.dfm}

procedure THauptseite.Button1Click(Sender: TObject);
begin
  Hauptseite.Hide;
  OrakelForm.Show;
end;

procedure THauptseite.TerminierenKnopfClick(Sender: TObject);
begin
if MessageDlg('Möchten Sie die Anwendung wirklich beenden?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Application.Terminate;

end;

procedure THauptseite.Button4Click(Sender: TObject);
begin
  Hauptseite.Hide;
  Reiserouten.Show;
end;

procedure THauptseite.ZurückZurStartseiteClick(Sender: TObject);
begin
  Hauptseite.Hide;
  Startseite.Show;

end;

end.
