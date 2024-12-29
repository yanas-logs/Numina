unit AppConfig;

interface

const
  AppVersion = '1.0.0';
  
procedure LoadConfig;

implementation

procedure LoadConfig;
begin
  WriteLn('Loading configuration from ', ConfigFilePath);
end;

end.
