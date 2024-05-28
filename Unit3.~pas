unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, inifiles, Spin;

type
  TForm3 = class(TForm)
    OpenDialog1: TOpenDialog;
    GroupBox3: TGroupBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Button8: TButton;
    GroupBox2: TGroupBox;
    Edit2: TLabeledEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit3: TLabeledEdit;
    Button2: TButton;
    Edit4: TLabeledEdit;
    Button3: TButton;
    Edit5: TLabeledEdit;
    Button4: TButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TLabeledEdit;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    Button9: TButton;
    CheckBox9: TCheckBox;
    SpinEdit1: TSpinEdit;
    Label5: TLabel;
    Button10: TButton;
    Label1: TLabel;
    Edit6: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  inifile: tinifile;
  temp: string;
implementation

uses Unit1, Unit2;

{$R *.dfm}


procedure TForm3.Button1Click(Sender: TObject);
begin
  if not OpenDialog1.Execute then
  exit;

  edit2.Text:=OpenDialog1.FileName;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  if not OpenDialog1.Execute then
  exit;

  edit3.Text:=OpenDialog1.FileName;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  if not OpenDialog1.Execute then
  exit;

  edit4.Text:=OpenDialog1.FileName;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
  inifile:=tinifile.Create(extractfilepath(application.ExeName)+'Confing.ini');
  inifile.WriteString('Main Options', 'Nick', edit1.Text);
  inifile.WriteString('Sound Options', 'Message', edit3.Text);
  inifile.WriteString('Sound Options', 'MessageSent', edit4.Text);
  inifile.WriteString('Sound Options', 'UserOnline', edit5.Text);
  inifile.WriteString('Sound Options', 'Startup', edit2.Text);
  inifile.WriteString('Main Options', 'IP', edit6.Text);
  inifile.WriteString('System Options', 'FontName', label2.Font.Name);
  inifile.WriteInteger('System Options', 'FontSize', label2.Font.Size);
  inifile.WriteInteger('System Options', 'FontColor', label2.Font.Color);
  inifile.WriteString('System Options', 'MesFontName', label1.Font.Name);
  inifile.WriteInteger('System Options', 'MesFontSize', label1.Font.Size);
  inifile.WriteInteger('System Options', 'MesFontColor', label1.Font.Color);
  inifile.WriteInteger('System Options', 'ChatColor', label3.Color);
  inifile.WriteInteger('System Options', 'MessageColor', label4.Color);
  inifile.WriteBool('System Options', 'MessageSound', CheckBox2.Checked);
  inifile.WriteBool('System Options', 'MessageSentSound', CheckBox3.Checked);
  inifile.WriteBool('System Options', 'UserOnlineSound', CheckBox4.Checked);
  inifile.WriteBool('System Options', 'StartupSound', CheckBox1.Checked);
  inifile.WriteBool('System Options', 'ChatOnTop', CheckBox5.Checked);
  inifile.WriteBool('System Options', 'MessageOnTop', CheckBox6.Checked);
  inifile.WriteBool('System Options', 'SaveHistory', CheckBox7.Checked);
  inifile.WriteBool('System Options', 'UseMessgeDialog', CheckBox8.Checked);
  inifile.WriteBool('System Options', 'AddTime', CheckBox9.Checked);
  inifile.WriteInteger('System Options', 'Time', SpinEdit1.Value);
  inifile.Free;

  form1.Memo1.Font:=Label2.Font;
  form1.TreeView1.Font:=Label2.Font;
  form1.Memo1.Color:=Label3.Color;
  form1.TreeView1.Color:=Label3.Color;
  form2.Memo1.Color:=Label4.Color;
  form2.Memo1.Font:=Label1.Font;

  if CheckBox5.Checked then
  form1.FormStyle:=fsStayOnTop
  else
  form1.FormStyle:=fsnormal;

  if CheckBox6.Checked then
  form2.FormStyle:=fsStayOnTop
  else
  form2.FormStyle:=fsnormal;

  form2.Timer1.Interval:=SpinEdit1.Value*1000;

  if temp<>edit1.Text then
  form1.reboot;

  if edit6.Text='' then
  begin
  Messagebox(handle, '¬ведите IP адресс', pchar(prog), MB_ICONERROR+MB_OK);
  abort;
  end;
  form1.IdUDPClient1.Host:=edit6.Text;
  close;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  FontDialog1.Font:=label2.Font;

  if not FontDialog1.Execute then
  exit;

  label2.Font:=FontDialog1.Font;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
  ColorDialog1.Color:=label4.Color;

  if not ColorDialog1.Execute then
  exit;

  label4.Color:=ColorDialog1.Color;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  inifile:=tinifile.Create(extractfilepath(application.ExeName)+'Confing.ini');
  edit1.Text:=inifile.ReadString('Main Options', 'Nick', 'NoName');
  edit3.Text:=inifile.ReadString('Sound Options', 'Message', '');
  if (edit3.Text='') and (fileexists(extractfilepath(application.ExeName)+'Sound\Msg.wav')) then
  edit3.Text:=extractfilepath(application.ExeName)+'Sound\Msg.wav';

  edit4.Text:=inifile.ReadString('Sound Options', 'MessageSent', '');
  if (edit4.Text='') and (fileexists(extractfilepath(application.ExeName)+'Sound\MsgSent.wav')) then
  edit4.Text:=extractfilepath(application.ExeName)+'Sound\MsgSent.wav';

  edit5.Text:=inifile.ReadString('Sound Options', 'UserOnline', '');
  if (edit5.Text='') and (fileexists(extractfilepath(application.ExeName)+'Sound\Online.wav')) then
  edit5.Text:=extractfilepath(application.ExeName)+'Sound\Online.wav';

  edit2.Text:=inifile.ReadString('Sound Options', 'Startup', '');
  if (edit2.Text='') and (fileexists(extractfilepath(application.ExeName)+'Sound\Startup.wav')) then
  edit2.Text:=extractfilepath(application.ExeName)+'Sound\Startup.wav';

  edit6.Text:=inifile.ReadString('Main Options', 'IP', '192.168.0.255');
  label3.Color:=inifile.ReadInteger('System Options', 'ChatColor', -2147483643);
  label4.Color:=inifile.ReadInteger('System Options', 'MessageColor', -2147483643);
  CheckBox2.Checked:=inifile.ReadBool('System Options', 'MessageSound', true);
  CheckBox3.Checked:=inifile.ReadBool('System Options', 'MessageSentSound', true);
  CheckBox4.Checked:=inifile.ReadBool('System Options', 'UserOnlineSound', true);
  CheckBox1.Checked:=inifile.ReadBool('System Options', 'StartupSound', true);
  CheckBox5.Checked:=inifile.ReadBool('System Options', 'ChatOnTop', false);
  CheckBox6.Checked:=inifile.ReadBool('System Options', 'MessageOnTop', true);
  CheckBox7.Checked:=inifile.ReadBool('System Options', 'SaveHistory', true);
  CheckBox8.Checked:=inifile.ReadBool('System Options', 'UseMessgeDialog', true);
  CheckBox9.Checked:=inifile.ReadBool('System Options', 'AddTime', false);
  SpinEdit1.Value:=inifile.ReadInteger('System Options', 'Time', 5);
  inifile.Free;
  label2.Font:=form1.Memo1.Font;
  label1.Font:=form2.Memo1.Font;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  ColorDialog1.Color:=label3.Color;

  if not ColorDialog1.Execute then
  exit;

  label3.Color:=ColorDialog1.Color;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  if not OpenDialog1.Execute then
  exit;

  edit5.Text:=OpenDialog1.FileName;
end;

procedure TForm3.Button9Click(Sender: TObject);
begin
  edit6.Text:=form1.IdUDPClient1.Host;
  close;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  Edit1.Text:=nick;
  temp:=edit1.Text;
end;

procedure TForm3.Button10Click(Sender: TObject);
begin
  FontDialog1.Font:=label1.Font;

  if not FontDialog1.Execute then
  exit;

  label1.Font:=FontDialog1.Font;
end;

end.
