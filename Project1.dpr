program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Startseite},
  Unit2 in 'Unit2.pas' {Hauptseite};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TStartseite, Startseite);
  Application.CreateForm(THauptseite, Hauptseite);
  Application.Run;
end.
