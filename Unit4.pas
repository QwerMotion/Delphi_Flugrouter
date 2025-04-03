unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit5, System.Generics.Collections;

type
  TReiserouten = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LandschaftsAuswahl: TComboBox;
    Klimaauswahl: TComboBox;
    Aktivit�tsauswahl: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    LabelReiseziel: TLabel;
    ErgebnisReiseziel: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Reiserouten: TReiserouten;

implementation
uses Unit2;

{$R *.dfm}


var
  Reiseziele: TDictionary<String, String>;

procedure InitReiseziele;
begin
  Reiseziele := TDictionary<String, String>.Create;

  // Hier die 27 Kombinationen hinzuf�gen
  Reiseziele.Add('Stadt_warm_Abenteuer', 'Dubai � Erlebe die W�ste und Wolkenkratzer!');
  Reiseziele.Add('Stadt_warm_Kultur', 'Kairo � Entdecke antike Bauwerke!');
  Reiseziele.Add('Stadt_warm_Entspannung', 'Havanna, Kuba � Genie�e die Str�nde und Caf�s!');

  Reiseziele.Add('Stadt_mild_Abenteuer', 'London � Spannende Erlebnisse in der Metropole!');
  Reiseziele.Add('Stadt_mild_Kultur', 'Paris � Kunst, Geschichte und romantische Gassen!');
  Reiseziele.Add('Stadt_mild_Entspannung', 'Lissabon � Genie�e das milde Klima am Fluss!');

  Reiseziele.Add('Stadt_kalt_Abenteuer', 'New York � Entdecke die Stadt, die niemals schl�ft!');
  Reiseziele.Add('Stadt_kalt_Kultur', 'Berlin � Historische Sehensw�rdigkeiten!');
  Reiseziele.Add('Stadt_kalt_Entspannung', 'Kopenhagen � Gem�tliche Caf�s und Hygge!');

  // Gebirge
  Reiseziele.Add('Gebirge_warm_Abenteuer', 'Anden � Wandern in S�damerika!');
  Reiseziele.Add('Gebirge_warm_Kultur', 'Nepal � Erkunde buddhistische Kl�ster!');
  Reiseziele.Add('Gebirge_warm_Entspannung', 'Rocky Mountains � Natur und Erholung!');

  Reiseziele.Add('Gebirge_mild_Abenteuer', 'Alpen � Wandern und Klettern!');
  Reiseziele.Add('Gebirge_mild_Kultur', 'Schwarzwald � Tradition und Geschichte!');
  Reiseziele.Add('Gebirge_mild_Entspannung', 'Tirol � Wellness mit Bergblick!');

  Reiseziele.Add('Gebirge_kalt_Abenteuer', 'Himalaya � Extreme Abenteuer!');
  Reiseziele.Add('Gebirge_kalt_Kultur', 'Skandinavien � Wikingerkultur entdecken!');
  Reiseziele.Add('Gebirge_kalt_Entspannung', 'Schweiz � Iglu-Hotels und Winterzauber!');

  // Strand
  Reiseziele.Add('Strand_warm_Abenteuer', 'Hawaii � Surfen auf den gro�en Wellen!');
  Reiseziele.Add('Strand_warm_Kultur', 'Thailand � Tempel und traumhafte Str�nde!');
  Reiseziele.Add('Strand_warm_Entspannung', 'Malediven � Entspannung pur!');

  Reiseziele.Add('Strand_mild_Abenteuer', 'Portugal � Wellenreiten an der Algarve!');
  Reiseziele.Add('Strand_mild_Kultur', 'Griechenland � Antike Ruinen am Meer!');
  Reiseziele.Add('Strand_mild_Entspannung', 'Kanaren � Sanfte Wellen und Ruhe!');

  Reiseziele.Add('Strand_kalt_Abenteuer', 'Neuseeland � Str�nde und Abenteuer!');
  Reiseziele.Add('Strand_kalt_Kultur', 'Schottland � Historische Burgen am Meer!');
  Reiseziele.Add('Strand_kalt_Entspannung', 'Island � Hei�e Quellen mit Meerblick!');
end;


procedure TReiserouten.Button1Click(Sender: TObject);
var
  Key, Reiseziel: String;
begin
  // Schl�ssel aus den Combobox-Werten erstellen
  Key := LandschaftsAuswahl.Text + '_' + Klimaauswahl.Text + '_' + Aktivit�tsauswahl.Text;

  // Pr�fen, ob diese Kombination existiert
  if Reiseziele.TryGetValue(Key, Reiseziel) then
    ErgebnisReiseziel.Caption := Reiseziel
  else
    ErgebnisReiseziel.Caption := 'Keine passende Route gefunden.';
end;

procedure TReiserouten.Button2Click(Sender: TObject);
begin
  Reiserouten.Hide;
  Hauptseite.Show;
end;

procedure TReiserouten.Button3Click(Sender: TObject);
begin
  Reiserouten.Hide;
  Anleitung.Show;
end;

procedure TReiserouten.FormCreate(Sender: TObject);
begin
  InitReiseziele;
end;

end.
