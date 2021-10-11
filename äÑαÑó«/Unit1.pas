unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    TrackBar1: TTrackBar;
    Button3: TButton;
  procedure zap(x1,y1,z1,kx,ky,kz,d:real; r:integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rand();
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  k:integer;

implementation

{$R *.dfm}
procedure TForm1.rand();
begin
  case random(20) of
    0:canvas.Pen.Color:=tcolor($00aa00);
    1:canvas.Pen.Color:=tcolor($00bb00);
    2:canvas.Pen.Color:=tcolor($00cc00);
    3:canvas.Pen.Color:=tcolor($00dd00);
    4:canvas.Pen.Color:=tcolor($00ee00);
    6:canvas.Pen.Color:=tcolor($009900);
    7:canvas.Pen.Color:=tcolor($008800);
    8:canvas.Pen.Color:=tcolor($007700);
    9:canvas.Pen.Color:=tcolor($006600);
    10:canvas.Pen.Color:=tcolor($00aaaa);
    11:canvas.Pen.Color:=tcolor($00bbbb);
    12:canvas.Pen.Color:=tcolor($00cccc);
    13:canvas.Pen.Color:=tcolor($00dddd);
    14:canvas.Pen.Color:=tcolor($00eeee);
    16:canvas.Pen.Color:=tcolor($009999);
    17:canvas.Pen.Color:=tcolor($008888);
    18:canvas.Pen.Color:=tcolor($007777);
    19:canvas.Pen.Color:=tcolor($006666);
  end;
end;

procedure TForm1.zap(x1,y1,z1,kx,ky,kz,d:real; r:integer);
var
j:integer;
begin
canvas.MoveTo(trunc(x1*10+300),trunc(500-y1*10));
x1:=x1+cos(kx*0.01745)*d;
y1:=y1+sin(ky*0.01745)*d;
z1:=z1+cos(kz*0.01745)*d;
canvas.Pen.Width:=trunc(k-r)*1;
canvas.LineTo(trunc(x1*10+300),trunc(500-y1*10));
{}  if r=k then
  begin
  canvas.Pen.Width:=3;
  rand;
  canvas.LineTo(trunc(x1*10+random(20)-10+300),
                trunc(500+random(20)-y1*10));
    if random(500)=0 then
    begin
    canvas.Pen.Width:=30;
    canvas.Pen.Color:=tcolor($5544ee);
    canvas.MoveTo(trunc(x1*10+300),trunc(520-y1*10));
    canvas.LineTo(trunc(x1*10+300),trunc(520-y1*10));
    end;
  canvas.Pen.Color:=clmaroon;
  end;    {}
for j:=0 to random((k-r+1)div 2)+1 do
begin
if r<k then zap(x1,y1,z1,kx+(random(26)-13)*(k-r+1)/kx*14,
  ky+(random(26)+13)*(k-r+1)/ky*14,
  kz+random(20)-10,d*0.7*(random(100)-r*40+500)/500,r+1);
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
i,x,y:integer;
begin
k:=TrackBar1.Position;
canvas.Pen.Color:=ClMaroon;
canvas.Rectangle(-10,-10,9000,9000);
zap(0,0,0,90,90,90,18,0);
canvas.Pen.Width:=10;
{}  for i:=1 to 1000 do
  begin
  rand();
  x:=random(500)+100;
  y:=random(100)+450;
  canvas.MoveTo(x,y);
  canvas.LineTo(x+random(20)-10,y+random(20)-10);
  end;  {}
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
canvas.Rectangle(-10,-10,9000,9000);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
randomize;
// Form1.WindowState:=wsMaximized;
k:=8
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ShowMessage('Автор: Саша Лядусов');
end;

end.
