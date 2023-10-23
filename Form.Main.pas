unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ExtDlgs,
  JPEG, NetEncoding;

type
  TfrmMain = class(TForm)
    edtFileName: TEdit;
    btnLoadImage: TButton;
    imgPreview: TImage;
    btnConvertToBase64: TButton;
    opdOpenImage: TOpenPictureDialog;
    memBase64: TMemo;
    btnConvertFromBase64: TButton;
    btnClear: TButton;
    procedure btnLoadImageClick(Sender: TObject);
    procedure btnConvertToBase64Click(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnConvertFromBase64Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnClearClick(Sender: TObject);
begin
  memBase64.Clear;
  imgPreview.Picture := nil;
end;

procedure TfrmMain.btnConvertFromBase64Click(Sender: TObject);
var
  LStream: TMemoryStream;
  LBase64String: String;
  LBuffer: TArray<Byte>;
begin
  { Convert a Base64 string into image }
  LBase64String := memBase64.Text;
  LBuffer := TNetEncoding.Base64.DecodeStringToBytes(LBase64String);
  LStream := TMemoryStream.Create;

  try
    LStream.WriteBuffer(LBuffer[0], Length(LBuffer));
    LStream.Seek(0, soFromBeginning);
    imgPreview.Picture.LoadFromStream(LStream);
  finally
    LStream.Free;
  end;
end;

procedure TfrmMain.btnConvertToBase64Click(Sender: TObject);
var
  LStream: TMemoryStream;
  LBase64String: String;
begin
  { Convert an image into a Base64 string }
  LStream := TMemoryStream.Create;

  try
    LStream.LoadFromFile(edtFileName.Text);
    LBase64String := TNetEncoding.Base64.EncodeBytesToString(LStream.Memory, LStream.Size);
    memBase64.Text := LBase64String;
  finally
    LStream.Free;
  end;
end;

procedure TfrmMain.btnLoadImageClick(Sender: TObject);
begin
  if opdOpenImage.Execute then
  begin
    edtFileName.Text := opdOpenImage.FileName;
    imgPreview.Picture.LoadFromFile(edtFileName.Text);
  end;
end;

end.
