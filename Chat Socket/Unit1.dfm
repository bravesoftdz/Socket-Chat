object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 491
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object edtip: TEdit
    Left = 24
    Top = 16
    Width = 177
    Height = 27
    TabOrder = 0
    TextHint = 'IP Adress'
  end
  object edtport: TEdit
    Left = 24
    Top = 64
    Width = 177
    Height = 27
    TabOrder = 1
    TextHint = 'Port'
  end
  object grp1: TGroupBox
    Left = 256
    Top = 8
    Width = 233
    Height = 145
    Caption = 'grp1'
    TabOrder = 2
    object lbl1: TLabel
      Left = 16
      Top = 62
      Width = 48
      Height = 19
      Caption = 'Adress'
    end
    object lbl2: TLabel
      Left = 16
      Top = 99
      Width = 32
      Height = 19
      Caption = 'Host'
    end
    object chkconnected: TCheckBox
      Left = 16
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Connected'
      Enabled = False
      TabOrder = 0
    end
    object edtlocaladress: TEdit
      Left = 80
      Top = 59
      Width = 121
      Height = 27
      Enabled = False
      TabOrder = 1
    end
    object edtlocalhost: TEdit
      Left = 80
      Top = 96
      Width = 121
      Height = 27
      Enabled = False
      TabOrder = 2
    end
  end
  object mmochat: TMemo
    Left = 8
    Top = 176
    Width = 481
    Height = 233
    TabOrder = 3
  end
  object edtmsg: TEdit
    Left = 8
    Top = 432
    Width = 400
    Height = 27
    TabOrder = 4
  end
  object btn1: TButton
    Left = 414
    Top = 433
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 24
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 6
    OnClick = btn2Click
  end
  object clntsckt1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = clntsckt1Connect
    OnDisconnect = clntsckt1Disconnect
    OnRead = clntsckt1Read
    Left = 152
    Top = 112
  end
end
