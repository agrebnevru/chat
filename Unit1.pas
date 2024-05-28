unit Unit1;

interface

uses
  windows, messages, graphics, controls, forms, dialogs, IdWinsock, stdctrls,
  SysUtils, Classes, IdBaseComponent, IdAntiFreezeBase, IdAntiFreeze,
  IdComponent, IdUDPBase, IdUDPClient, IdStack, IdUDPServer, IdSocketHandle,
  ExtCtrls, ComCtrls, inifiles, mmsystem, shellapi, TabNotBk, XPMan, Menus, TrayIcon,
  clipbrd, Buttons, ToolWin, ImgList;

type
  TForm1 = class(TForm)
    IdUDPServer1: TIdUDPServer;
    IdUDPClient1: TIdUDPClient;
    IdAntiFreeze1: TIdAntiFreeze;
    Timer1: TTimer;
    XPMan1: TXPMan;
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ShowChat1: TMenuItem;
    About1: TMenuItem;
    Panel1: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    TreeView1: TTreeView;
    Panel4: TPanel;
    Panel2: TPanel;
    edit1: TEdit;
    Panel5: TPanel;
    Options1: TMenuItem;
    Panel6: TPanel;
    Panel7: TPanel;
    memo1: TRichEdit;
    PopupMenu2: TPopupMenu;
    ToolBar1: TToolBar;
    d1: TMenuItem;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    N3: TMenuItem;
    D2: TMenuItem;
    N81: TMenuItem;
    N4: TMenuItem;
    O1: TMenuItem;
    N5: TMenuItem;
    o2: TMenuItem;
    N6: TMenuItem;
    O3: TMenuItem;
    O4: TMenuItem;
    x1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ImageList2: TImageList;
    ToolBar3: TToolBar;
    ToolButton8: TToolButton;
    PopupMenu3: TPopupMenu;
    g1: TMenuItem;
    g2: TMenuItem;
    g4: TMenuItem;
    g5: TMenuItem;
    g6: TMenuItem;
    g7: TMenuItem;
    g8: TMenuItem;
    g9: TMenuItem;
    g10: TMenuItem;
    g11: TMenuItem;
    g12: TMenuItem;
    g13: TMenuItem;
    g14: TMenuItem;
    g15: TMenuItem;
    g16: TMenuItem;
    g17: TMenuItem;
    g18: TMenuItem;
    g19: TMenuItem;
    g20: TMenuItem;
    g21: TMenuItem;
    G22: TMenuItem;
    g23: TMenuItem;
    g24: TMenuItem;
    g25: TMenuItem;
    g26: TMenuItem;
    g27: TMenuItem;
    g28: TMenuItem;
    PopupMenu4: TPopupMenu;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    procedure IdUDPServer1UDPRead(Sender: TObject; AData: TStream;
      ABinding: TIdSocketHandle);
    procedure FormCreate(Sender: TObject);
    procedure send;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N1Click(Sender: TObject);
    procedure ShowChat1Click(Sender: TObject);
    procedure mes(mes: string);
    procedure reboot;
    procedure sstat(index: integer);
    procedure status(stat: string);
    procedure TrayIcon1Click(Sender: TObject);
    procedure TrayIcon1Restore(Sender: TObject);
    procedure TrayIcon1Minimize(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Panel4Resize(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
    procedure Options1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edit1KeyPress(Sender: TObject; var Key: Char);
    procedure edit1Change(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure Color(AText: string; AColor: TColor);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure d1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure o2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure O3Click(Sender: TObject);
    procedure O4Click(Sender: TObject);
    procedure x1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure messend;
    procedure stat(index: integer; s: string);
    procedure N8Click(Sender: TObject);
    procedure Panel6DblClick(Sender: TObject);
    procedure edit1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure g1Click(Sender: TObject);
    procedure g2Click(Sender: TObject);
    procedure g4Click(Sender: TObject);
    procedure g5Click(Sender: TObject);
    procedure g6Click(Sender: TObject);
    procedure g7Click(Sender: TObject);
    procedure g8Click(Sender: TObject);
    procedure g9Click(Sender: TObject);
    procedure g10Click(Sender: TObject);
    procedure g11Click(Sender: TObject);
    procedure g12Click(Sender: TObject);
    procedure g13Click(Sender: TObject);
    procedure g14Click(Sender: TObject);
    procedure g15Click(Sender: TObject);
    procedure g16Click(Sender: TObject);
    procedure g17Click(Sender: TObject);
    procedure g18Click(Sender: TObject);
    procedure g19Click(Sender: TObject);
    procedure g20Click(Sender: TObject);
    procedure g21Click(Sender: TObject);
    procedure G22Click(Sender: TObject);
    procedure g23Click(Sender: TObject);
    procedure g24Click(Sender: TObject);
    procedure g25Click(Sender: TObject);
    procedure g26Click(Sender: TObject);
    procedure g27Click(Sender: TObject);
    procedure g28Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure smile(text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  history: tstrings;
  inifile: tinifile;
  temp, nick: STRING;
  minimize, ChatOnTop: boolean;
const
  prog='[Lan Chat | Beta V2.0]';
implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.send;
begin
  try
    IdUDPClient1.Active:=true;
    IdUDPClient1.Send(temp);
    IdUDPClient1.Active:=false;
  except
  end;
end;

procedure tform1.sstat(index: integer);
begin
  TreeView1.Items.Item[0].ImageIndex:=index;
  TreeView1.Items.Item[0].SelectedIndex:=index;
  ToolButton8.ImageIndex:=index;
end;

procedure TForm1.reboot;
begin
  nick:=form3.Edit1.Text;
  TreeView1.Items.Item[0].Text:=form3.Edit1.Text+' ('+ToolButton9.Caption+')';
  temp:='/reboot/';
  send;
end;

procedure tform1.Color(AText: string; AColor: TColor);
begin
  with memo1 do
  begin
  SelStart := Length(Text);
  SelAttributes.Color := AColor;
  Lines.Add(AText);
  end;
end;

procedure tform1.mes(mes: string);
var
  i: byte;
begin
  form2.Memo1.Lines.Add(mes);
  form2.show;
  if form2.AlphaBlendValue<>255 then
  begin
  form2.Timer1.Enabled:=false;
    for i:=0 to 255 do
    begin
    application.ProcessMessages;
    form2.AlphaBlendValue:=i;
    end;
  end;
  edit1.setfocus;
  form2.Timer1.Enabled:=true;
end;

procedure tform1.status(stat: string);
var
  i: integer;
begin
  for i:=0 to TreeView1.Items.Count-1 do
  begin
    if copy(TreeView1.Items.Item[i].Text, 1, pos(' (', TreeView1.Items.Item[i].Text))=copy(stat, 9, pos(' (', stat)-8) then
    begin
    form2.Memo1.Alignment:=taCenter;
    TreeView1.Items.Item[i].Text:=copy(stat, 9, pos(')', stat)-8);
    form2.Panel1.Caption:='Пользователь меняет статус';
    if nick+' ('+ToolButton9.Caption+')'<>copy(stat, 9, pos(')', stat)-8) then
      if form3.CheckBox8.Checked then
      mes(copy(stat, 9, pos(')', stat)-8));
    exit;
    end;
  end;
end;

procedure tform1.messend;
const
  sim=500;
begin
  if edit1.Text<>'' then
  begin
    if length(edit1.Text)>sim then
    begin
    form2.Panel1.Caption:='Сервисное сообщение';
    mes('Максимальная длина сообщения '+inttostr(sim)+' символов');
    exit;
    end;
    temp:='<'+nick+'> '+edit1.Text;
    send;
    edit1.Clear;
  end;
end;

procedure TForm1.IdUDPServer1UDPRead(Sender: TObject; AData: TStream;
  ABinding: TIdSocketHandle);
var
  text: TStringStream;
  i: integer;
begin
  text:=TStringStream.Create('');
  try
  text.CopyFrom(AData, AData.Size);

  if copy(text.DataString, 1, 6)='/quit/' then
  begin
    for i:=0 to TreeView1.Items.Count-1 do
    begin
      if (TreeView1.Items.Item[i].Text=copy(text.DataString, 7, pos(')', text.DataString)-6))
      and (nick+' ('+ToolButton9.Caption+')'<>copy(text.DataString, 7, pos(')', text.DataString)-6)) then
      begin
        if form3.CheckBox8.Checked then
        begin
        form2.Panel1.Caption:='Сервисное сообщение';
        mes(TreeView1.Items.Item[i].Text+' Уходит из чата');
        end;
      color(TreeView1.Items.Item[i].Text+' Уходит из чата', clred);
      TreeView1.Items.Delete(TreeView1.Items.Item[i]);
      form1.Caption:=prog+' - Online ('+inttostr(TreeView1.Items.Count)+')';
      exit;
      end;
    end;
  exit;
  end;

  begin
    if copy(text.DataString, 1, 8)='/status/' then
    begin
    status(text.DataString);
    exit;
    end;
  end;

  if pos('/reboot/', text.DataString)<>0 then
  begin
  TreeView1.Items.Clear;
  TreeView1.Items.Add(TreeView1.Selected, nick+' ('+ToolButton9.Caption+')');
  color('Юзерлист обновлен', ClGreen);
  form1.Caption:=prog+' - Online ('+inttostr(TreeView1.Items.Count)+')';
  sstat(ToolButton8.ImageIndex);
  exit;
  end;

  if copy(text.DataString, 1, 6)='/nick/' then
  begin
    for i:=0 to TreeView1.Items.Count-1 do
      if (TreeView1.Items.Item[i].Text=copy(text.DataString, 7, pos(')', text.DataString)-6)) then
      exit;

    if form3.CheckBox8.Checked then
    begin
    form2.Panel1.Caption:='Сервисное сообщение';
    mes(copy(text.DataString, 7, pos(')', text.DataString)-6)+' Приходит в чат');
    SendMessage(memo1.Handle, EM_SCROLL, SB_LINEDOWN, 0);
    end;

    TreeView1.Items.Add(TreeView1.Selected, copy(text.DataString, 7, pos(')', text.DataString)-6));
    form1.Caption:=prog+' - Online ('+inttostr(TreeView1.Items.Count)+')';
    color('В чат приходит '+copy(text.DataString, 7, pos(')', text.DataString)-6), clred);
    if form3.CheckBox4.Checked then
      if fileexists(form3.Edit5.Text) then
      sndplaysound(pchar(form3.Edit5.Text), SND_ASYNC);

    for i:=0 to TreeView1.Items.Count-1 do
    begin
      if copy(text.DataString, 7, pos(')', text.DataString)-6)=TreeView1.Items.Item[i].Text then
      begin
        if TreeView1.Items.Item[i].ImageIndex<>strtoint(copy(text.DataString, pos('#', text.DataString)+1, length(text.DataString))) then
        begin
        try
        TreeView1.Items.Item[i].ImageIndex:=strtoint(copy(text.DataString, pos('#', text.DataString)+1, length(text.DataString)));
        TreeView1.Items.Item[i].SelectedIndex:=strtoint(copy(text.DataString, pos('#', text.DataString)+1, length(text.DataString)));
        except
        TreeView1.Items.Item[i].ImageIndex:=26;
        TreeView1.Items.Item[i].SelectedIndex:=26;
        end;
        break;
        end;
      end;
    end;
    exit;
  end;

  if (temp=text.DataString) and (text.DataString<>'') then
  begin
    if (form3.CheckBox3.Checked) and (text.DataString<>'/quit/'+nick+' ('+ToolButton9.Caption+')') then
    if fileexists(form3.Edit4.Text) then
    sndplaysound(pchar(form3.Edit4.Text), SND_ASYNC);
  end
  else
  begin
    if form3.CheckBox2.Checked then
      if fileexists(form3.Edit3.Text) then
      sndplaysound(pchar(form3.Edit3.Text), SND_ASYNC);
  end;
  /////////////////////////
  application.Restore;
  if minimize then
  application.Minimize;
  /////////////////////////
  if temp<>text.DataString then
  begin
    if form3.CheckBox9.Checked then
    color('['+timetostr(now)+'] '+text.DataString, clblue)
    else
    color(text.DataString, clblue);
  if form3.CheckBox8.Checked then
    if (temp<>text.DataString) and (text.DataString<>'') then
    begin
    form2.Panel1.Caption:='Получено сообщение';
    mes(text.DataString);
    end;
  SendMessage(memo1.Handle, EM_SCROLL, SB_LINEDOWN, 0);
  exit;
  end;

  if form3.CheckBox9.Checked then
  memo1.Lines.Add('['+timetostr(now)+'] '+text.DataString)
  else
  memo1.Lines.Add(text.DataString);
  SendMessage(memo1.Handle, EM_SCROLL, SB_LINEDOWN, 0);

  finally
  text.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  application.Title:=prog;
  TrayIcon1.Hint:=prog;

  history:=tstringlist.Create;

  inifile:=tinifile.Create(extractfilepath(application.ExeName)+'Confing.ini');
  nick:=inifile.ReadString('Main Options', 'Nick', '');
  if nick='' then
  nick:=inputbox(prog, 'Enter Yuor Nick', 'NoName');
  IdUDPClient1.Host:=inifile.ReadString('Main Options', 'IP', '192.168.0.255');
  ToolButton9.Caption:=inifile.ReadString('Main Options', 'Status', 'Онлайн');
  memo1.Font.Name:=inifile.ReadString('System Options', 'FontName', 'MS Sans Serif');
  memo1.Font.Size:=inifile.ReadInteger('System Options', 'FontSize', 8);
  memo1.Font.Color:=inifile.ReadInteger('System Options', 'FontColor', -2147483640);
  memo1.Color:=inifile.ReadInteger('System Options', 'ChatColor', -2147483643);
  form1.left:=inifile.ReadInteger('System Options', 'ChatPosX', 192);
  form1.top:=inifile.ReadInteger('System Options', 'ChatPosY', 119);
  form1.Width:=inifile.ReadInteger('System Options', 'ChatWidth', 467);
  form1.Height:=inifile.ReadInteger('System Options', 'ChatHeight', 386);
  panel3.Width:=inifile.ReadInteger('System Options', 'UserList', 100);
  ToolButton9.ImageIndex:=inifile.ReadInteger('System Options', 'Index', 7);
  ChatOnTop:=inifile.ReadBool('System Options', 'ChatOnTop', false);
  minimize:=inifile.ReadBool('System Options', 'Minimize', false);
  n8.Checked:=inifile.ReadBool('System Options', 'SmileSend', false);
  panel3.Visible:=inifile.ReadBool('System Options', 'UserListVisible', true);
  Splitter2.Visible:=inifile.ReadBool('System Options', 'SplitterVisible', true);
  ToolButton8.ImageIndex:=inifile.ReadInteger('System Options', 'Image', 24);

  if inifile.ReadBool('System Options', 'ChatFontItalic', true) then
  memo1.Font.Style:=[fsItalic];

  if inifile.ReadBool('System Options', 'ChatFontBold', true) then
  memo1.Font.Style:=[fsbold];

  inifile.Free;
  TreeView1.Items.Add(TreeView1.Selected, nick+' ('+ToolButton9.Caption+')');
  form1.Caption:=prog+' - Online ('+inttostr(TreeView1.Items.Count)+')';
  TreeView1.Font:=memo1.Font;

  edit1.Color:=memo1.Color;
  TreeView1.Color:=memo1.Color;

  if ChatOnTop then
  form1.FormStyle:=fsStayOnTop
  else
  form1.FormStyle:=fsnormal;

  if not fileexists(extractfilepath(application.ExeName)+'Update.exe') then
  ToolButton7.Visible:=false;

  if minimize then
  application.Minimize;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inifile:=tinifile.Create(extractfilepath(application.ExeName)+'Confing.ini');
  inifile.WriteString('Main Options', 'Nick', nick);
  inifile.WriteString('Main Options', 'Status', ToolButton9.Caption);
  inifile.WriteString('Main Options', 'IP', IdUDPClient1.Host);

  inifile.WriteString('System Options', 'FontName', memo1.Font.Name);
  inifile.WriteInteger('System Options', 'FontSize', memo1.Font.Size);
  inifile.WriteInteger('System Options', 'FontColor', memo1.Font.Color);

  if memo1.Font.Style=[fsbold]=true then
  inifile.WriteBool('System Options', 'ChatFontBold', true)
  else
  inifile.WriteBool('System Options', 'ChatFontBold', false);

  if memo1.Font.Style=[fsItalic]=true then
  inifile.WriteBool('System Options', 'ChatFontItalic', true)
  else
  inifile.WriteBool('System Options', 'ChatFontItalic', false);

  inifile.WriteInteger('System Options', 'ChatColor', memo1.Color);
  inifile.WriteInteger('System Options', 'ChatPosX', form1.left);
  inifile.WriteInteger('System Options', 'ChatPosY', form1.top);
  inifile.WriteInteger('System Options', 'ChatWidth', form1.Width);
  inifile.WriteInteger('System Options', 'ChatHeight', form1.Height);
  inifile.WriteInteger('System Options', 'UserList', panel3.Width);
  inifile.WriteBool('System Options', 'ChatOnTop', ChatOnTop);
  inifile.WriteInteger('System Options', 'Index', ToolButton9.ImageIndex);
  inifile.WriteBool('System Options', 'Minimize', minimize);
  inifile.WriteBool('System Options', 'SmileSend', n8.Checked);
  inifile.WriteBool('System Options', 'UserListVisible', panel3.Visible);
  inifile.WriteBool('System Options', 'SplitterVisible', Splitter2.Visible);
  inifile.WriteInteger('System Options', 'Image', ToolButton8.ImageIndex);
  inifile.Free;
  history.Free;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  temp:='/nick/'+nick+' ('+ToolButton9.Caption+')#'+inttostr(ToolButton8.ImageIndex);
  send;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  IdUDPServer1.Active:=false;
  timer1.Enabled:=false;
  temp:='/quit/'+nick+' ('+ToolButton9.Caption+')#'+inttostr(ToolButton8.ImageIndex);;
  send;
  if memo1.Lines.Text<>'' then
  if form3.CheckBox7.Checked then
  begin
    if fileexists(extractfilepath(application.ExeName)+'History.log') then
    history.LoadFromFile(extractfilepath(application.ExeName)+'History.log');
  history.Add(memo1.Lines.Text);
  history.Add('**************************************');
  history.SaveToFile(extractfilepath(application.ExeName)+'History.log');
  end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.ShowChat1Click(Sender: TObject);
begin
  application.Restore;
end;

procedure TForm1.TrayIcon1Click(Sender: TObject);
begin
  if minimize then
  begin
  TrayIcon1.Restore;
  edit1.SetFocus;
  end
  else
  application.Minimize;
end;

procedure TForm1.TrayIcon1Restore(Sender: TObject);
begin
  minimize:=false;
end;

procedure TForm1.TrayIcon1Minimize(Sender: TObject);
begin
  minimize:=true;
end;

procedure TForm1.About1Click(Sender: TObject);
begin
  messagebox(handle, 'Created By inCyber Team'+#13+'Coder: KOЯN', pchar(prog), MB_OK);
end;

procedure TForm1.Panel4Resize(Sender: TObject);
begin
  ToolButton9.Width:=Panel4.Width-4;
end;

procedure TForm1.Panel2Resize(Sender: TObject);
begin
  edit1.Width:=Panel2.Width-4;
end;

procedure TForm1.Options1Click(Sender: TObject);
begin
  form3.Label2.Font:=memo1.Font;
  form3.Label1.Font:=form2.memo1.Font;
  form3.ColorDialog1.Color:=memo1.Color;
  form3.FontDialog1.Font:=memo1.Font;
  form3.showmodal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  TreeView1.Items.Item[0].ImageIndex:=ToolButton8.ImageIndex;
  TreeView1.Items.Item[0].SelectedIndex:=ToolButton8.Imageindex;
  timer1.Enabled:=true;
  form2.timer1.Interval:=form3.SpinEdit1.Value*1000;
  IdUDPServer1.Active:=true;
  temp:='/nick/'+nick+' ('+ToolButton9.Caption+')#'+inttostr(ToolButton8.ImageIndex);
  send;

  if form3.CheckBox1.Checked then
    if fileexists(form3.Edit2.Text) then
    sndplaysound(pchar(form3.Edit2.Text), SND_ASYNC);
end;

procedure TForm1.edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) then
  begin
  messend;
  Key:=#0;
  end;
end;

procedure TForm1.edit1Change(Sender: TObject);
begin
  panel7.Caption:=inttostr(length(edit1.Text));
end;

procedure TForm1.TreeView1DblClick(Sender: TObject);
begin
  if TreeView1.Selected.Text<>nick+' ('+ToolButton9.Caption+')' then
  edit1.Text:='<'+copy(TreeView1.Selected.Text, 1, pos(' (', TreeView1.Selected.Text)-1)+'> ';
  edit1.SetFocus;
  edit1.SelStart:=length(edit1.Text);
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  if form3.CheckBox7.Checked then
  begin
    if fileexists(extractfilepath(application.ExeName)+'History.log') then
    history.LoadFromFile(extractfilepath(application.ExeName)+'History.log');
  history.Add(memo1.Lines.Text);
  history.SaveToFile(extractfilepath(application.ExeName)+'History.log');
  end;
  memo1.Clear;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
  if fileexists(extractfilepath(application.ExeName)+'History.log') then
  shellexecute(handle, 'open', pchar(extractfilepath(application.ExeName)+'History.log'),nil, nil, 1);
end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin
  form3.FontDialog1.Font:=memo1.Font;

  if not form3.FontDialog1.Execute then
  exit;

  memo1.Font:=form3.FontDialog1.Font;
  TreeView1.Font:=form3.FontDialog1.Font;
end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin
  form3.ColorDialog1.Color:=memo1.Color;

  if not form3.ColorDialog1.Execute then
  exit;

  memo1.Color:=form3.ColorDialog1.Color;
  TreeView1.Color:=form3.ColorDialog1.Color;
end;

procedure TForm1.ToolButton6Click(Sender: TObject);
begin
  form3.Label2.Font:=memo1.Font;
  form3.Label1.Font:=form2.memo1.Font;
  form3.ColorDialog1.Color:=memo1.Color;
  form3.FontDialog1.Font:=memo1.Font;
  form3.showmodal;
end;

procedure TForm1.ToolButton7Click(Sender: TObject);
begin
  if messagebox(handle, 'Вы дейсвительно хотите обновить чат?', pchar(prog), MB_ICONQUESTION+MB_YESNO)=ID_YES then
    if fileexists(extractfilepath(application.ExeName)+'Update.exe') then
    begin
    shellexecute(handle, 'open', pchar(extractfilepath(application.ExeName)+'Update.exe'),nil, nil, 1);
    close;
    end
    else
    messagebox(handle, 'Update program not found', pchar(prog), MB_ICONERROR+MB_OK);
end;

procedure TForm1.smile(text: string);
begin
  if n8.Checked then
  begin
  edit1.Text:=edit1.Text+text;
  messend;
  end
  else
  begin
  edit1.Text:=edit1.Text+text;
  edit1.SelStart:=length(edit1.Text);
  end;
end;

procedure TForm1.d1Click(Sender: TObject);
begin
  smile(' :-)');
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  smile(' ;-)');
end;

procedure TForm1.D2Click(Sender: TObject);
begin
  smile(' :-D');
end;

procedure TForm1.N81Click(Sender: TObject);
begin
  smile(' 8-)');
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  smile(' :-(');
end;

procedure TForm1.O1Click(Sender: TObject);
begin
  smile(' :-O');
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  smile(' :-|');
end;

procedure TForm1.o2Click(Sender: TObject);
begin
  smile(' >:o');
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  smile(' ]:->');
end;

procedure TForm1.O3Click(Sender: TObject);
begin
  smile(' O:-)');
end;

procedure TForm1.O4Click(Sender: TObject);
begin
  smile(' =-O');
end;

procedure TForm1.x1Click(Sender: TObject);
begin
  smile(' :-x');
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  smile(' :''(');
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  if N8.Checked then
  N8.Checked:=false
  else
  N8.Checked:=true;
end;

procedure TForm1.Panel6DblClick(Sender: TObject);
begin
  if Panel3.Visible then
  begin
  Panel3.Visible:=false;
  Splitter2.Visible:=false;
  end
  else
  begin
  Panel3.Visible:=true;
  Splitter2.Visible:=true;
  end;
end;

procedure TForm1.edit1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  edit1.SetFocus;
end;

procedure TForm1.g1Click(Sender: TObject);
begin
  sstat(0);
end;

procedure TForm1.g2Click(Sender: TObject);
begin
  sstat(1);
end;

procedure TForm1.g4Click(Sender: TObject);
begin
  sstat(2);
end;

procedure TForm1.g5Click(Sender: TObject);
begin
  sstat(3);
end;

procedure TForm1.g6Click(Sender: TObject);
begin
  sstat(4);
end;

procedure TForm1.g7Click(Sender: TObject);
begin
  sstat(5);
end;

procedure TForm1.g8Click(Sender: TObject);
begin
  sstat(6);
end;

procedure TForm1.g9Click(Sender: TObject);
begin
  sstat(7);
end;

procedure TForm1.g10Click(Sender: TObject);
begin
  sstat(8);
end;

procedure TForm1.g11Click(Sender: TObject);
begin
  sstat(9);
end;

procedure TForm1.g12Click(Sender: TObject);
begin
  sstat(10);
end;

procedure TForm1.g13Click(Sender: TObject);
begin
  sstat(11);
end;

procedure TForm1.g14Click(Sender: TObject);
begin
  sstat(12);
end;

procedure TForm1.g15Click(Sender: TObject);
begin
  sstat(13);
end;

procedure TForm1.g16Click(Sender: TObject);
begin
  sstat(14);
end;

procedure TForm1.g17Click(Sender: TObject);
begin
  sstat(15);
end;

procedure TForm1.g18Click(Sender: TObject);
begin
  sstat(16);
end;

procedure TForm1.g19Click(Sender: TObject);
begin
  sstat(17);
end;

procedure TForm1.g20Click(Sender: TObject);
begin
  sstat(18);
end;

procedure TForm1.g21Click(Sender: TObject);
begin
  sstat(19);
end;

procedure TForm1.G22Click(Sender: TObject);
begin
  sstat(20);
end;

procedure TForm1.g23Click(Sender: TObject);
begin
  sstat(21);
end;

procedure TForm1.g24Click(Sender: TObject);
begin
  sstat(22);
end;

procedure TForm1.g25Click(Sender: TObject);
begin
  sstat(23);
end;

procedure TForm1.g26Click(Sender: TObject);
begin
  sstat(24);
end;

procedure TForm1.g27Click(Sender: TObject);
begin
  sstat(25);
end;

procedure TForm1.g28Click(Sender: TObject);
begin
  sstat(26);
end;

procedure TForm1.stat(index: integer; s: string);
begin
  timer1.Enabled:=false;
  ToolButton9.ImageIndex:=index;
  ToolButton9.Caption:=s;
  temp:='/status/'+nick+' ('+ToolButton9.Caption+')#'+inttostr(ToolButton8.ImageIndex);
  send;
  edit1.SetFocus;
  timer1.Enabled:=true;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  stat(7, 'Онлайн');
end;

procedure TForm1.N10Click(Sender: TObject);
begin
  stat(14, 'Готов поболтать');
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  stat(16, 'Злой');
end;

procedure TForm1.N12Click(Sender: TObject);
begin
  stat(15, 'Депрессия');
end;

procedure TForm1.N13Click(Sender: TObject);
begin
  stat(13, 'Кушаю');
end;

procedure TForm1.N14Click(Sender: TObject);
begin
  stat(8, 'Отошел');
end;

procedure TForm1.N15Click(Sender: TObject);
begin
  stat(12, 'Недоступен');
end;

procedure TForm1.N16Click(Sender: TObject);
begin
  stat(10, 'Занят');
end;

procedure TForm1.N17Click(Sender: TObject);
begin
  stat(11, 'Не беспокоить');
end;

end.
