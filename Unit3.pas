unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TOrakelForm = class(TForm)
    T: TLabel;
    FrageEdit: TEdit;
    Label1: TLabel;
    AntwortKnopf: TButton;
    zur�ckKnopf: TButton;
    Label2: TLabel;
    AntwortEdit: TEdit;
    AntwortTimer: TTimer;  // Timer hinzuf�gen
    procedure zur�ckKnopfClick(Sender: TObject);
    procedure AntwortKnopfClick(Sender: TObject);
    procedure AntwortTimerTimer(Sender: TObject);
  private
    { Private-Deklarationen }
    Fortschritt: Integer; // Variable f�r Prozentfortschritt
  public
    { Public-Deklarationen }
  end;

var
  OrakelForm: TOrakelForm;

implementation

uses Unit2;

{$R *.dfm}

const
  Antworten: array[0..2] of string = ('Ja', 'Nein', 'Vielleicht');

procedure TOrakelForm.AntwortKnopfClick(Sender: TObject);
begin
  if FrageEdit.Text = '' then
  begin
    AntwortEdit.Text := 'Bitte erst eine Frage eingeben';
    Exit;
  end;

  Fortschritt := 0;
  AntwortEdit.Text := 'Berechne Antwort: 0%';

  // Timer sicherstellen, dass er aktiv ist
  AntwortTimer.Interval := 100;
  AntwortTimer.Enabled := True;

  //ShowMessage('Timer gestartet!'); // Debugging-Hilfe
end;

procedure TOrakelForm.AntwortTimerTimer(Sender: TObject);
begin
  Fortschritt := Fortschritt + Random(10) + 5; // Zuf�lliger Schritt von 5 bis 15%

  if Fortschritt >= 100 then
  begin
    AntwortTimer.Enabled := False; // Timer stoppen
    AntwortEdit.Text := 'Nachdem dichter Nebel sich zu legen begonnen hat, steht die Antwort fest: ' + Antworten[Random(3)]; // Zuf�llige Antwort setzen
  end
  else
  begin
    AntwortEdit.Text := 'Berechne Antwort: ' + IntToStr(Fortschritt) + '%';
  end;
end;

procedure TOrakelForm.zur�ckKnopfClick(Sender: TObject);
begin
  OrakelForm.Hide;
  Hauptseite.Show;
end;


end.
