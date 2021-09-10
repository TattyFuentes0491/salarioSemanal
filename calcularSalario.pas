unit calcularSalario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure calcularSalario(horasTrab: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  calcularSalario(StrToInt(Edit1.Text));
end;

procedure TForm1.calcularSalario(horasTrab: Integer);
var
vlrHra: Float64;
vlrHraEx: Float64;
salario: Float64;
salarioExtra: Float64;
horExt: Integer;
begin
  vlrHra:= 15000;
  vlrHraEx:= 19000;
  if horasTrab <= 35 then
  begin
    salario:= vlrHra * (horasTrab);
    MessageDlg('El empleado ' + Edit2.Text + ' se le debe pagar la suma de ' +
                FloatToStr(salario) + ' Pesos. ', mtInformation, [mbOK], 0);
  end else if horasTrab > 35 then
           begin
             horExt:= horasTrab-35;
             salarioExtra:= horExt*vlrHraEx;
             salario:= (vlrHra * 35)+salarioExtra;
             MessageDlg('El empleado ' + Edit2.Text + ' se le debe pagar la suma de ' +
                           FloatToStr(salario) + ' Pesos. ', mtInformation, [mbOK], 0);
           end;


end;

end.
