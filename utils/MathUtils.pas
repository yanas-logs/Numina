program MathUtils;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function Add(a, b: Double): Double;
begin
  Result := a + b;
end;

function Subtract(a, b: Double): Double;
begin
  Result := a - b;
end;

function Multiply(a, b: Double): Double;
begin
  Result := a * b;
end;

function Divide(a, b: Double): Double;
begin
  if b = 0 then
    raise Exception.Create('Error: Division by zero')
  else
    Result := a / b;
end;

var
  num1, num2: Double;
  choice: Integer;
begin
  try
    WriteLn('Math Utils Program');
    WriteLn('1. Add');
    WriteLn('2. Subtract');
    WriteLn('3. Multiply');
    WriteLn('4. Divide');
    Write('Choose an operation (1-4): ');
    ReadLn(choice);

    Write('Enter first number: ');
    ReadLn(num1);
    Write('Enter second number: ');
    ReadLn(num2);

    case choice of
      1: WriteLn('Result: ', Add(num1, num2):0:2);
      2: WriteLn('Result: ', Subtract(num1, num2):0:2);
      3: WriteLn('Result: ', Multiply(num1, num2):0:2);
      4: WriteLn('Result: ', Divide(num1, num2):0:2);
    else
      WriteLn('Invalid choice');
    end;
  except
    on E: Exception do
      WriteLn(E.Message);
  end;

  ReadLn;
end.