unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Win.ScktComp;

type
  TForm1 = class(TForm)
    edtip: TEdit;
    edtport: TEdit;
    grp1: TGroupBox;
    chkconnected: TCheckBox;
    edtlocaladress: TEdit;
    edtlocalhost: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    mmochat: TMemo;
    edtmsg: TEdit;
    btn1: TButton;
    btn2: TButton;
    clntsckt1: TClientSocket;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure clntsckt1Connect(Sender: TObject; Socket: TCustomWinSocket);
    procedure clntsckt1Disconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure clntsckt1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  clntsckt1.Socket.SendText(edtmsg.Text);
  mmochat.Lines.Add('Me: ' + edtmsg.Text);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  clntsckt1.Active := False;
  clntsckt1.Host := edtip.Text;
  clntsckt1.Port := StrToInt(edtport.Text);
  clntsckt1.Active := True;
end;

procedure TForm1.clntsckt1Connect(Sender: TObject; Socket: TCustomWinSocket);
begin
  chkconnected.Checked := Socket.Connected;
  edtlocaladress.Text := socket.LocalAddress;
  edtlocalhost.Text := Socket.LocalHost;
  mmochat.Lines.Clear;
end;

procedure TForm1.clntsckt1Disconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  chkconnected.Checked := Socket.Connected;
end;

procedure TForm1.clntsckt1Read(Sender: TObject; Socket: TCustomWinSocket);
begin
  mmochat.Lines.Add(clntsckt1.Socket.ReceiveText);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.Title := 'test';
end;

end.
