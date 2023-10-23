object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Image to Base64'
  ClientHeight = 570
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object imgPreview: TImage
    Left = 8
    Top = 86
    Width = 633
    Height = 244
    Stretch = True
  end
  object edtFileName: TEdit
    Left = 8
    Top = 8
    Width = 633
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btnLoadImage: TButton
    Left = 8
    Top = 47
    Width = 153
    Height = 33
    Caption = 'Load image'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnLoadImageClick
  end
  object btnConvertToBase64: TButton
    Left = 167
    Top = 47
    Width = 155
    Height = 33
    Caption = 'Convert to Base64'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnConvertToBase64Click
  end
  object memBase64: TMemo
    Left = 8
    Top = 344
    Width = 633
    Height = 218
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object btnConvertFromBase64: TButton
    Left = 328
    Top = 47
    Width = 154
    Height = 33
    Caption = 'Convert from Base64'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnConvertFromBase64Click
  end
  object btnClear: TButton
    Left = 488
    Top = 47
    Width = 153
    Height = 33
    Caption = 'Clear'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnClearClick
  end
  object opdOpenImage: TOpenPictureDialog
    Title = 'Choose file...'
    Left = 528
    Top = 120
  end
end
