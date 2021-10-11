program TORSUMYPlayer;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  SonStream in 'SonStream.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TORSUMYPlayer';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
