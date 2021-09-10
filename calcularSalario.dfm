object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 205
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 205
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 16
      Width = 145
      Height = 13
      Caption = 'CALCULO SALARIO SEMANAL '
    end
    object Label2: TLabel
      Left = 32
      Top = 88
      Width = 98
      Height = 13
      Caption = 'HORAS LABORADAS'
    end
    object Label3: TLabel
      Left = 32
      Top = 56
      Width = 112
      Height = 13
      Caption = 'NOMBRE TRABAJADOR'
    end
    object Edit1: TEdit
      Left = 192
      Top = 83
      Width = 56
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 254
      Top = 83
      Width = 107
      Height = 25
      Caption = 'CALCULAR'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 192
      Top = 56
      Width = 233
      Height = 21
      TabOrder = 0
    end
  end
end
