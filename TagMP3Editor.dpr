program TagMP3Editor;

uses
  Forms,
  uTagMP3 in 'uTagMP3.pas' {Form_TagMP3Editor},
  ID3v2 in 'ID3v2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Mp3 Tag Editor - 1.0';
  Application.CreateForm(TForm_TagMP3Editor, Form_TagMP3Editor);
  Application.Run;
end.
