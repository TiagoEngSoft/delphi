object frmRedefinirSenha: TfrmRedefinirSenha
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Redefinir Senha'
  ClientHeight = 347
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    Padding.Top = 30
    TabOrder = 0
    ExplicitWidth = 521
    object lblNomeAplicacao: TLabel
      Left = 0
      Top = 67
      Width = 531
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'Informe a sua nova senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 216
    end
    object lblUsuario: TLabel
      Left = 0
      Top = 30
      Width = 531
      Height = 37
      Align = alTop
      Alignment = taCenter
      Caption = 'Usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 33
      ExplicitWidth = 521
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 531
    Height = 234
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 60
    Padding.Right = 60
    TabOrder = 1
    ExplicitWidth = 521
    ExplicitHeight = 245
    object Panel3: TPanel
      Left = 60
      Top = 0
      Width = 411
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 68
      ExplicitTop = -40
      ExplicitWidth = 401
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 411
        Height = 19
        Align = alTop
        Caption = 'Senha'
        ExplicitWidth = 43
      end
      object edtSenha: TEdit
        Left = 0
        Top = 19
        Width = 411
        Height = 27
        Align = alTop
        PasswordChar = '*'
        TabOrder = 0
        ExplicitTop = 25
        ExplicitWidth = 401
      end
    end
    object Panel4: TPanel
      Left = 60
      Top = 80
      Width = 411
      Height = 81
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 401
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 411
        Height = 19
        Align = alTop
        Caption = 'Confirme a sua senha'
        ExplicitWidth = 153
      end
      object edtConfirmarSenha: TEdit
        Left = 0
        Top = 19
        Width = 411
        Height = 27
        Align = alTop
        PasswordChar = '*'
        TabOrder = 0
        ExplicitTop = 27
        ExplicitWidth = 401
      end
    end
    object Panel5: TPanel
      Left = 60
      Top = 161
      Width = 411
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 145
      ExplicitWidth = 401
      object btnEConfirmar: TButton
        Left = 275
        Top = 0
        Width = 136
        Height = 48
        Align = alRight
        Caption = 'Confirmar'
        TabOrder = 0
        OnClick = btnEConfirmarClick
        ExplicitLeft = 264
        ExplicitTop = 6
        ExplicitHeight = 54
      end
      object Button1: TButton
        Left = 0
        Top = 0
        Width = 136
        Height = 48
        Align = alLeft
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = Button1Click
        ExplicitLeft = 122
        ExplicitTop = 6
        ExplicitHeight = 54
      end
    end
  end
end
