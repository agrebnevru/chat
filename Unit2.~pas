unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, inifiles, ExtCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
    Memo1: TMemo;
    Panel1: TPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure Memo1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Memo1Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  inifile: tinifile;
  MessageOnTop: boolean;
implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  form2.Hide;
end;

procedure TForm2.Memo1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if button=mbright then
  begin
  form2.Hide;
  timer1.Enabled:=false;
  end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  form2.Hide;
end;

procedure TForm2.Memo1Click(Sender: TObject);
begin
  application.Restore;
  form1.Show;
  form1.edit1.SetFocus;
end;

procedure TForm2.FormHide(Sender: TObject);
var
  i: byte;
begin
  memo1.Clear;
  timer1.Enabled:=false;
  memo1.Enabled:=false;
  for i:=255 downto 0 do
  begin
  application.ProcessMessages;
  form2.AlphaBlendValue:=i;
  end;
  form2.Hide;
end;

procedure TForm2.Memo1DblClick(Sender: TObject);
begin
  timer1.Enabled:=false;
  Panel1.Caption:='Правый клик закроет окно';
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  inifile:=tinifile.Create(extractfilepath(application.ExeName)+'Confing.ini');
  form2.memo1.Color:=inifile.ReadInteger('System Options', 'MessageColor', -2147483643);
  MessageOnTop:=inifile.ReadBool('System Options', 'MessageOnTop', true);
  memo1.Font.Name:=inifile.ReadString('System Options', 'MesFontName', 'MS Sans Serif');
  memo1.Font.Size:=inifile.ReadInteger('System Options', 'MesFontSize', 8);
  memo1.Font.Color:=inifile.ReadInteger('System Options', 'MesFontColor', -2147483640);
  inifile.Free;
  memo1.Font:=form1.Memo1.Font;
  
  if MessageOnTop then
  form2.FormStyle:=fsStayOnTop
  else
  form2.FormStyle:=fsnormal;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  form2.Left:=screen.WorkAreaWidth-form2.Width;
  form2.Top:=screen.WorkAreaHeight-form2.Height;
  if Panel1.Caption='Сервисное сообщение' then
  form2.Memo1.Alignment:=taCenter;
  if Panel1.Caption='Получено сообщение' then
  form2.Memo1.Alignment:=taLeftJustify;
  memo1.Enabled:=true;
end;

procedure TForm2.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  timer1.Enabled:=false;
end;

procedure TForm2.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  timer1.Enabled:=true;
end;

end.
