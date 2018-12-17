unit uUtil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls,
  Buttons, DBCtrls, DB, Mask, QRCTRLS, ToolEdit, ComCtrls, JPEG, SqlExpr, dbXPress, Variants,
  DateUtils;

  function fnc_Retornar_TotalHora(DtInicial, DtFinal, HrInicial, HrFinal : TDateTime) : Real;
  procedure prc_Calcular_Idade(Data : TDateTime);

var
  vIdade_Anos, vIdade_Meses : Integer;
  vIdade_Texto : String;

implementation

////////////////////////////////////////////////////////////////////
//////////////////// RETORNAR O TOTAL DE HORAS  ////////////////////
////////////////////////////////////////////////////////////////////
function fnc_Retornar_TotalHora(DtInicial, DtFinal, HrInicial, HrFinal : TDateTime) : Real;
var
  vQtdDias: Currency;
  vQtdHoras, vAux : Currency;
  vHrInicioAux : TDateTime;
  vHrAux : TDateTime;
begin
  Result := 0;
  vQtdDias     := DtFinal - DtInicial;
  vQtdHoras    := 0;
  vAux         := 0;
  vHrInicioAux := 0;
  if (HrInicial > HrFinal) or
     (DtInicial <> DtFinal) then
  begin
    vHrInicioAux := StrToTime('23:59');
    vHrAux       := StrToTime('00:01');
    vQtdHoras    := ((vHrInicioAux + vHrAux) - HrInicial) * 24;
    vQtdHoras    := vQtdHoras + (HrFinal * 24);
  end
  else
    vQtdHoras := ((HrFinal - HrInicial) * 24);

  if vQtdDias > 1 then
  begin
    vAux      := 24 * (vQtdDias - 1);
    vQtdHoras := vQtdHoras + vAux;
  end;
  Result := StrToFloat(FormatFloat('0.00',vQtdHoras));
end;

////////////////////////////////////////////////////////////////////
/////////////////////// CALCULA A IDADE  ///////////////////////////
////////////////////////////////////////////////////////////////////
procedure prc_Calcular_Idade(Data : TDateTime);
var
  vAux, vMesAux, vAux2 : Integer;
  vData : TDate;
begin
  vIdade_Anos  := 0;
  vIdade_Meses := 0;
  vIdade_Texto := '';
  if Data < 10 then
    exit;

  vData   := Date;
  vMesAux := MonthsBetween(Data,vData);
  vIdade_Anos  := vMesAux div 12;
  vIdade_Meses := vMesAux mod 12;
  vIdade_Texto := '';
  if vIdade_Anos > 0 then
    vIdade_Texto := IntToStr(vIdade_Anos) + ' anos ';
  if (vIdade_Meses > 0) and (vIdade_Anos > 0) then
    vIdade_Texto := vIdade_Texto + 'e '+ IntToStr(vIdade_Meses) + ' mês(s)'
  else
  if vIdade_Meses > 0 then
    vIdade_Texto := IntToStr(vIdade_Meses) + ' mês(s)';
end;

end.

