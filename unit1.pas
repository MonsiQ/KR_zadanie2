unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
num: Integer;
begin
num := StrToInt(InputBox('Введите число', 'Введите число:', ''));
if (num mod 2 = 0) then
ShowMessage(IntToStr(num) + ' - четное число')
else
ShowMessage(IntToStr(num) + ' - нечетное число');
if (num > 0) then
ShowMessage(IntToStr(num) + ' - положительное число')
else if (num < 0) then
ShowMessage(IntToStr(num) + ' - отрицательное число')
else
ShowMessage(IntToStr(num) + ' - ноль');
if (num mod 3 = 0) then
ShowMessage(IntToStr(num) + ' - кратно трём')
else
ShowMessage(IntToStr(num) + ' - не кратно трём');
end;

end.

