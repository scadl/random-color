unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Clipbrd;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  r,g,b:byte;

implementation

{$R *.dfm}

function GenColor():Boolean;
begin
 r:=random(255);
 g:=random(255);
 b:=random(255);
 form1.Color:=RGB(r,g,b);
 form1.SpeedButton1.Font.Color:=RGB(255-r,255-g,255-b);
 form1.SpeedButton2.Font.Color:=RGB(255-r,255-g,255-b);
 form1.SpeedButton3.Font.Color:=RGB(255-r,255-g,255-b);
 form1.Caption:='Colorer | Color RGB Code: rgb('+
 inttostr(r)+', '+
 inttostr(g)+', '+
 inttostr(b)+'). | Color HEX Code #'+
 ColorToString(form1.Color)[8]+ColorToString(form1.Color)[9]+
 ColorToString(form1.Color)[6]+ColorToString(form1.Color)[7]+
 ColorToString(form1.Color)[4]+ColorToString(form1.Color)[5]+'.';
// ShowMessage(ColorToString(form1.Color)+' '+ColorToString(form1.Color)[4]);
end;

procedure TForm1.FormClick(Sender: TObject);
begin
 GenColor();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 GenColor();
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  GenColor();
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Clipboard.SetTextBuf(pchar('rgb('+inttostr(r)+','+inttostr(g)+','+inttostr(b)+')'));
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
Clipboard.SetTextBuf(pchar('#'+
 ColorToString(form1.Color)[8]+ColorToString(form1.Color)[9]+
 ColorToString(form1.Color)[6]+ColorToString(form1.Color)[7]+
 ColorToString(form1.Color)[4]+ColorToString(form1.Color)[5]));
end;

end.
