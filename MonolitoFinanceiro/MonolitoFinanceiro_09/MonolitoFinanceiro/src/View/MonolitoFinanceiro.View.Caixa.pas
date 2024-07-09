unit MonolitoFinanceiro.View.Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MonolitoFinanceiro.View.CadastroPadrao,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPanels;

type
  TfrmCaixa = class(TfrmCadastroPadrao)
    Label2: TLabel;
    edtNumeroDocumento: TEdit;
    Label3: TLabel;
    edtDescricao: TEdit;
    edtValor: TEdit;
    Label5: TLabel;
    RadioGroup1: TRadioGroup;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure Pesquisar; override;
  end;

var
  frmCaixa: TfrmCaixa;

implementation

uses
  MonolitoFinanceiro.Model.Caixa, MonolitoFinanceiro.Utilitarios;

{$R *.dfm}

{ TfrmCadastroPadrao1 }

procedure TfrmCaixa.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edtNumeroDocumento.Text := dmCaixa.cdsCaixaNUMERO_DOC.AsString;
  edtDescricao.Text := dmCaixa.cdsCaixaDESCRICAO.AsString;
  edtValor.Text := dmCaixa.cdsCaixaVALOR.AsString;
  if dmCaixa.cdsCaixaTIPO.AsString = 'R' then
    RadioGroup1.itemIndex := 0
  else
    RadioGroup1.itemIndex := 1;
end;

procedure TfrmCaixa.btnSalvarClick(Sender: TObject);
var
  LTipo : string;
begin
  if Trim(edtNumeroDocumento.Text) = '' then
  begin
    edtNumeroDocumento.SetFocus;
    Application.MessageBox('O campo n�mero do documento n�o pode ser vazio.', 'Aten��o', MB_OK + MB_ICONWARNING);
    abort;
  end;

  if Trim(edtValor.Text) = '' then
  begin
    edtValor.SetFocus;
    Application.MessageBox('O campo valor n�o pode ser vazio.', 'Aten��o', MB_OK + MB_ICONWARNING);
    abort;
  end;

  if RadioGroup1.ItemIndex = -1 then
  begin
    Application.MessageBox('Selecione o tipo do lan�amento', 'Aten��o', MB_OK + MB_ICONWARNING);
    abort;
  end;

  LTipo := 'R';
  if RadioGroup1.ItemIndex = 1 then
    LTipo := 'D';

  if DataSource1.State in [dsInsert] then
  begin
    dmCaixa.cdsCaixaID.AsString := TUtilitarios.GetID;
    dmCaixa.cdsCaixaDATA_CADASTRO.AsDateTime := Now;
  end;

  dmCaixa.cdsCaixaNUMERO_DOC.AsString := Trim(edtNumeroDocumento.Text);
  dmCaixa.cdsCaixaDESCRICAO.AsString := Trim(edtDescricao.Text);
  dmCaixa.cdsCaixaValor.AsCurrency := StrToFloat(edtValor.Text);
  dmCaixa.cdsCaixaTIPO.AsString := LTipo;

  inherited;
end;

procedure TfrmCaixa.Pesquisar;
begin
  dmCaixa.cdsCaixa.Close;
  dmCaixa.cdsCaixa.CommandText := 'Select * from Caixa';
  dmCaixa.cdsCaixa.Open;
  inherited;
end;

end.
