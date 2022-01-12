object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Keygen LARP v3'
  ClientHeight = 194
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 120
  TextHeight = 20
  object LabeledEdit1: TLabeledEdit
    Left = 49
    Top = 40
    Width = 392
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    EditLabel.Width = 135
    EditLabel.Height = 20
    EditLabel.Margins.Left = 4
    EditLabel.Margins.Top = 4
    EditLabel.Margins.Right = 4
    EditLabel.Margins.Bottom = 4
    EditLabel.Caption = 'Inserisci il tuo nome:'
    TabOrder = 0
    Text = ''
  end
  object Button1: TButton
    Left = 280
    Top = 121
    Width = 217
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Genera chiave di attivazione'
    TabOrder = 1
    OnClick = Button1Click
  end
end
