unit MonolitoFinanceiro.View.Relatorios.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB;

type
  TrelUsuarios = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand4: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    DataSource1: TDataSource;
    RLBand5: TRLBand;
    lblNome: TRLLabel;
    RLPanel1: TRLPanel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relUsuarios: TrelUsuarios;

implementation

uses
  MonolitoFinanceiro.Model.Usuarios;

{$R *.dfm}

procedure TrelUsuarios.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lblNome.Caption := Format('Impresso por %s em %s', [dmUsuarios.GetUsuarioLogado.Nome, FormatDateTime('dd/mm/yyyy', now)]);
end;

end.
