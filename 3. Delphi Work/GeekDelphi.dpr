program GeekDelphi;

uses
  Forms,
  uGeekDelphi in 'uGeekDelphi.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
