unit uGeekDelphi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, jpeg, ExtCtrls, Grids, DBGrids,
  RXDBCtrl, RpCon, RpConDS, RpDefine, RpRave, RpBase, RpSystem;

type
  TFormMain = class(TForm)
    Cnn_DMD: TADOConnection;
    QryDMD: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    EditServer: TEdit;
    btnConectar: TBitBtn;
    EditBanco: TEdit;
    Log: TMemo;
    Label3: TLabel;
    EditUsuario: TEdit;
    Label4: TLabel;
    EditSenha: TEdit;
    Shape1: TShape;
    Image1: TImage;
    Image2: TImage;
    dbGridVendas: TRxDBGrid;
    dsVendas: TDataSource;
    btnImprimir: TButton;
    rvVendas: TRvProject;
    dsRelVenda: TRvDataSetConnection;
    QryDMDDat_Venda: TStringField;
    QryDMDCod_Cliente: TIntegerField;
    QryDMDDes_Client: TStringField;
    QryDMDCod_Produto: TIntegerField;
    QryDMDDes_Produt: TStringField;
    QryDMDQtd_Produto: TIntegerField;
    QryDMDVlr_TotItem: TBCDField;
    qryTotal: TADOQuery;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lblValTotal: TLabel;
    lblQtdeCompra: TLabel;
    qryTotalTOTAL_COMPRAR: TIntegerField;
    qryTotalTOTAL_VENDIDO: TIntegerField;
    RvSystem1: TRvSystem;
    procedure btnConectarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    procedure EscreveLog(PMsg: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.btnConectarClick(Sender: TObject);
begin
  screen.Cursor := crHourGlass;
  try
    Cnn_DMD.Connected := False;
    EscreveLog('Conectando ao servidor DMD');
    EscreveLog('------------------------------------------------------------------------------------');
    try
      Cnn_DMD.ConnectionString := 'Provider=SQLOLEDB.1;Password='+EditSenha.Text+
                                  ';Persist Security Info=True;User ID='+EditUsuario.Text+
                                  ';Initial Catalog='+EditBanco.Text+
                                  ';Data Source='+EditServer.Text;
      Cnn_DMD.Connected := True;
      EscreveLog('Conexão realizada com sucesso!');
      EscreveLog('------------------------------------------------------------------------------------');
      btnConectar.Enabled := False;

    except
      btnConectar.Enabled := True;
      EditServer.SetFocus;
      EscreveLog('Erro ao conectar com o servidor');
      EscreveLog('------------------------------------------------------------------------------------');
    end;
  finally
    Screen.Cursor := crDefault;
  end;
  QryDMD.Open;
  qryTotal.Open;
  lblValTotal.Caption   := qryTotalTOTAL_VENDIDO.AsString;
  lblQtdeCompra.Caption := qryTotalTOTAL_COMPRAR.AsString;
 end;

procedure TFormMain.EscreveLog(PMsg: String);
begin
  Log.Lines.Add(PMsg + ' : '+ DateTimeToStr(Now));
  Log.Repaint;
end;

procedure TFormMain.btnImprimirClick(Sender: TObject);
begin
  if QryDMD.IsEmpty then
  begin
    ShowMessage('Se concete a base de dados pra imprimir o relatório');
  end
  else
  begin
    rvVendas.ProjectFile := 'C:\Users\temporario\Desktop\GeekDelphi\3. Delphi Work\RELATÓRIO\Venda.rav';
    rvVendas.Execute;
  end;
end;

end.
