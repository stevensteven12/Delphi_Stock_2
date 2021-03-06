unit YuanTa_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, YuantaOrdLib_TLB, Grids, DBGrids, ComCtrls,
  ExtCtrls, ToolWin, YuantaQuoteLib_TLB, DBCtrls, Mask;

type
  TfmYuanTa = class(TForm)
    YuantaOrd1: TYuantaOrd;
    YuantaQuote1: TYuantaQuote;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnLogOn: TButton;
    edtID: TEdit;
    edtPassWord: TEdit;
    btnLogOut: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ListView1: TListView;
    TabSheet2: TTabSheet;
    CoolBar2: TCoolBar;
    Panel3: TPanel;
    btnAutoBuy: TButton;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    cbbCommNO: TComboBox;
    edtQty: TEdit;
    btnBalance: TButton;
    cbAutoBalance: TCheckBox;
    cbbBalance: TComboBox;
    btnOpenInterest: TButton;
    ListView3: TListView;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    Label11: TLabel;
    RecordStart: TDateTimePicker;
    RecordEnd: TDateTimePicker;
    cbRecordDate: TCheckBox;
    DBGrid_Record: TDBGrid;
    tsOpenInterest: TTabSheet;
    StringGrid1: TStringGrid;
    ListV_Interest: TListView;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label8: TLabel;
    cbbFuctionType: TComboBox;
    cbbCommType: TComboBox;
    Label9: TLabel;
    edtPrice: TEdit;
    rgTradeType: TRadioGroup;
    rgBuySell: TRadioGroup;
    Label7: TLabel;
    edtOrderNO: TEdit;
    cbbOrderType: TComboBox;
    Label10: TLabel;
    cbAccount: TComboBox;
    TabSheet6: TTabSheet;
    Panel4: TPanel;
    btnQuote: TButton;
    btnCancelQuote: TButton;
    lvQuote: TListView;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    Label19: TLabel;
    GroupBox6: TGroupBox;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    GroupBox7: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    GroupBox8: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    dbcbA6: TDBComboBox;
    Label40: TLabel;
    dbrA1: TDBRadioGroup;
    dbcbB_Open: TDBCheckBox;
    dbcbC_Open: TDBCheckBox;
    dbcbD_Open: TDBCheckBox;
    dbcbE_Open: TDBCheckBox;
    Label13: TLabel;
    dbeA11: TDBEdit;
    dbeB1: TDBEdit;
    dbeB2: TDBEdit;
    dbeB3: TDBEdit;
    dbeB5: TDBEdit;
    dbeC1: TDBEdit;
    dbeC2: TDBEdit;
    dbeC3: TDBEdit;
    dbeC4: TDBEdit;
    dbeC5: TDBEdit;
    dbeD1: TDBEdit;
    dbeD2: TDBEdit;
    dbeD3: TDBEdit;
    dbeD4: TDBEdit;
    dbeD6: TDBEdit;
    dbeD7: TDBEdit;
    dbeD8: TDBEdit;
    dbeE1: TDBEdit;
    dbeE3: TDBEdit;
    dbeE5: TDBEdit;
    dbeE7: TDBEdit;
    dbeE8: TDBEdit;
    dbeE9: TDBEdit;
    dbeE11: TDBEdit;
    Label14: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    dbeA7: TDBEdit;
    dbeA8: TDBEdit;
    dbeA9: TDBEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    dbeA13: TDBEdit;
    dbeA14: TDBEdit;
    dbeA15: TDBEdit;
    dbeC7: TDBEdit;
    dbnaviParam: TDBNavigator;
    DBGrid_Param: TDBGrid;
    btnQuoteCurve: TButton;
    dbeB2_1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    dbeD1_1: TDBEdit;
    dbeD3_1: TDBEdit;
    dbeD4_1: TDBEdit;
    Label12: TLabel;
    procedure btnLogOnClick(Sender: TObject);
    procedure YuantaOrd1LogonS(ASender: TObject; TLinkStatus: Integer;
      const AccList, Casq, Cast: WideString);
    procedure btnLogOutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAutoBuyClick(Sender: TObject);
    procedure YuantaOrd1OrdResult(ASender: TObject; ID: Integer;
      const result: WideString);
    procedure YuantaOrd1OrdRptF(ASender: TObject; const Omkt, Mktt, Cmbf,
      Statusc, Ts_Code, Ts_Msg, Bhno, AcNo, Suba, Symb, Scnam, O_Kind, O_Type,
      Buys, S_Buys, O_Prc, O_Qty, Work_Qty, Kill_Qty, Deal_Qty, Order_No,
      T_Date, O_Date, O_Time, O_Src, O_Lin, A_Prc, Oseq_No, Err_Code, Err_Msg,
      R_Time, D_Flag: WideString);
    procedure YuantaOrd1OrdMatF(ASender: TObject; const Omkt, Buys, Cmbf, Bhno,
      AcNo, Suba, Symb, Scnam, O_Kind, S_Buys, O_Prc, A_Prc, O_Qty, Deal_Qty,
      T_Date, D_Time, Order_No, O_Src, O_Lin, Oseq_No: WideString);
    procedure btnOpenInterestClick(Sender: TObject);
    procedure YuantaOrd1UserDefinsFuncResult(ASender: TObject;
      RowCount: Integer; const Results, WorkID: WideString);
    procedure btnQuoteClick(Sender: TObject);
    procedure btnCancelQuoteClick(Sender: TObject);
    procedure YuantaQuote1GetMktAll(ASender: TObject; const symbol, RefPri,
      OpenPri, HighPri, LowPri, UpPri, DnPri, MatchTime, MatchPri, MatchQty,
      TolMatchQty, BestBuyQty, BestBuyPri, BestSellQty, BestSellPri, FDBPri,
      FDBQty, FDSPri, FDSQty: WideString);
    procedure YuantaQuote1RegError(ASender: TObject; const symbol: WideString;
      updmode, ErrCode: Integer);
    procedure btnQuoteCurveClick(Sender: TObject);
    procedure dbeB1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmYuanTa: TfmYuanTa;

implementation

uses DMRecord, Quote, Strategy, Public_Variant;

{$R *.dfm}

procedure TfmYuanTa.FormCreate(Sender: TObject);
begin
 YuantaOrd1:= TYuantaOrd.Create(Self);
 YuantaOrd1.OnLogonS:= YuantaOrd1LogonS; // TLinkStatus: 回傳連線狀態, AccList: 回傳帳號, Casq: 憑證序號, Cast: 憑證狀態
 YuantaOrd1.OnOrdResult:= YuantaOrd1OrdResult; // 委託結果
 YuantaOrd1.OnOrdRptF:= YuantaOrd1OrdRptF;  // 即時委託回報
 YuantaOrd1.OnOrdMatF:= YuantaOrd1OrdMatF; // 成交回報
 // 自定義查詢 (未平倉部位, 帳務....)
 YuantaOrd1.OnUserDefinsFuncResult:= YuantaOrd1UserDefinsFuncResult;
 // 報價
 YuantaQuote1:= TYuantaQuote.Create(Self);
 YuantaQuote1.OnGetMktAll:= YuantaQuote1GetMktAll; // 商品註冊
 YuantaQuote1.OnRegError:= YuantaQuote1RegError; // 商品註冊失敗狀態回覆
 // 資料庫 active
 DataModule1.asqQU_Param.Active := True;
 B1_Strategy();
end;

procedure TfmYuanTa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(YuantaOrd1);
 FreeAndNil(YuantaQuote1);
end;

procedure TfmYuanTa.btnLogOnClick(Sender: TObject);
begin
 cbAccount.Clear;
 YuantaOrd1.SetFutOrdConnection(edtID.Text, edtPassWord.Text, 'api.yuantafutures.com.tw', 80);
 // 報價連線
{ try
  YuantaQuote1.SetMktLogon(edtID.Text, edtPassWord.Text, 'quote.yuantafutures.com.tw', '80');
  except
  on e:Exception do ShowMessage(e.Message);
 end;  }
end;

// 委託下單
procedure TfmYuanTa.btnAutoBuyClick(Sender: TObject);
var MarketPrice: String;
    ret_no: String;
begin
 if Trim(edtPrice.Text) = '' then
  MarketPrice:= 'M' else MarketPrice:= 'L';

 // 設定下單委託是否為同步 (or 非同步)
 YuantaOrd1.SetWaitOrdResult(0);

 if Length(cbAccount.Text)= 16 then
  ret_no:= YuantaOrd1.SendOrderF(Copy(cbbFuctionType.Text,1,2), Copy(cbbCommType.Text, 1,1),
         Copy(cbAccount.Text, 1, 3), Copy(cbAccount.Text, 5, 7), '', edtOrderNO.Text,
         Copy(rgBuySell.Items.Strings[rgBuySell.ItemIndex], 1, 1), cbbCommNO.Text, edtPrice.Text, edtQty.Text,
         Copy(cbbOrderType.Text, 1,1), MarketPrice,
         Copy(rgTradeType.Items.Strings[rgTradeType.ItemIndex], 1, 1), '', '')
 else  // 有子帳號
  ret_no:= YuantaOrd1.SendOrderF(Copy(cbbFuctionType.Text,1,2), Copy(cbbCommType.Text, 1,1),
         Copy(cbAccount.Text, 1, 3), Copy(cbAccount.Text, 5, 7), Copy(cbAccount.Text, 12, 4), edtOrderNO.Text,
         Copy(rgBuySell.Items.Strings[rgBuySell.ItemIndex], 1, 1), cbbCommNO.Text, edtPrice.Text, edtQty.Text,
         Copy(cbbOrderType.Text, 1,1), MarketPrice,
         Copy(rgTradeType.Items.Strings[rgTradeType.ItemIndex], 1, 1), '', '');

end;

// 自定義查詢 (未平倉部位, 帳務....)
procedure TfmYuanTa.btnOpenInterestClick(Sender: TObject);
var ret_code: Integer;
    Param: String;
begin
// Param:= 'Func=FA003|bhno=' + Copy(cbAccount.Text, 1, 3) + '|acno='
//     + Copy(cbAccount.Text, 5, 7) + '|suba=|type=1|currency=TWD';  // 帳務
 Param:= 'Func=FA001|bhno=' + Copy(cbAccount.Text, 1, 3) + '|acno='
     + Copy(cbAccount.Text, 5, 7) + '|suba=|kind=A|FC=N'; // 未平倉內容
 ret_code:= YuantaOrd1.UserDefinsFunc(Param, 'FA003');
end;

// 登出
procedure TfmYuanTa.btnLogOutClick(Sender: TObject);
begin
 YuantaOrd1.DoLogout();
 cbAccount.Clear;
end;

// TLinkStatus: 回傳連線狀態, AccList: 回傳帳號, Casq: 憑證序號, Cast: 憑證狀態
procedure TfmYuanTa.YuantaOrd1LogonS(ASender: TObject; TLinkStatus: Integer;
  const AccList, Casq, Cast: WideString);
var temp1, temp2, temp3: String;
begin
 cbAccount.Items.Add(Copy(AccList, 3, Length(AccList)));
 cbAccount.ItemIndex:= 0;
 Temp2:= Casq;
end;

// 成交回報
procedure TfmYuanTa.YuantaOrd1OrdMatF(ASender: TObject; const Omkt, Buys, Cmbf,
  Bhno, AcNo, Suba, Symb, Scnam, O_Kind, S_Buys, O_Prc, A_Prc, O_Qty, Deal_Qty,
  T_Date, D_Time, Order_No, O_Src, O_Lin, Oseq_No: WideString);
begin
 ShowMessage(Omkt + ' ' + Scnam);
end;

// 委託結果
procedure TfmYuanTa.YuantaOrd1OrdResult(ASender: TObject; ID: Integer;
  const result: WideString);
begin
 ShowMessage(IntToStr(ID) + ' ' + result);
end;

// 即時委託回報
procedure TfmYuanTa.YuantaOrd1OrdRptF(ASender: TObject; const Omkt, Mktt, Cmbf,
  Statusc, Ts_Code, Ts_Msg, Bhno, AcNo, Suba, Symb, Scnam, O_Kind, O_Type, Buys,
  S_Buys, O_Prc, O_Qty, Work_Qty, Kill_Qty, Deal_Qty, Order_No, T_Date, O_Date,
  O_Time, O_Src, O_Lin, A_Prc, Oseq_No, Err_Code, Err_Msg, R_Time,
  D_Flag: WideString);
begin
 ShowMessage(Omkt + ' ' + Err_Msg);
end;

// 自定義查詢 event (未平倉部位, 帳務....)
procedure TfmYuanTa.YuantaOrd1UserDefinsFuncResult(ASender: TObject;
  RowCount: Integer; const Results, WorkID: WideString);
var StockNO, Qty, BS: String;
begin
//  ShowMessage(Results);
 if Qty <> '' then
 begin
  cbbCommNO.Text:= StockNO;
  edtQty.Text:= IntToStr(StrToInt(Qty)*2);
  if BS= 'S' then rgBuySell.ItemIndex:= 0 else rgBuySell.ItemIndex:= 1;

  if OrderState then btnAutoBuyClick(Self);
 end;
 OrderState:= False;
end;

// 報價==========================================================================
// 商品註冊
procedure TfmYuanTa.btnQuoteClick(Sender: TObject);
var RegErrCode: Integer;
begin
 try
  RegErrCode:= YuantaQuote1.AddMktReg(cbbCommNO.Text, '4');
 except
  on e:Exception do ShowMessage(e.Message);
 end;
end;

// 取消商品註冊
procedure TfmYuanTa.btnCancelQuoteClick(Sender: TObject);
var RegErrCode: Integer;
begin
 try
  RegErrCode:= YuantaQuote1.DelMktReg(cbbCommNO.Text);
 except
  on e:Exception do ShowMessage(e.Message);
 end;
end;

// 取得商品資料
procedure TfmYuanTa.YuantaQuote1GetMktAll(ASender: TObject; const symbol,
  RefPri, OpenPri, HighPri, LowPri, UpPri, DnPri, MatchTime, MatchPri, MatchQty,
  TolMatchQty, BestBuyQty, BestBuyPri, BestSellQty, BestSellPri, FDBPri, FDBQty,
  FDSPri, FDSQty: WideString);
begin
 ShowMessage(symbol + ' ' + OpenPri);
end;

// 商品註冊失敗狀態回覆
procedure TfmYuanTa.YuantaQuote1RegError(ASender: TObject; const symbol: WideString; updmode, ErrCode: Integer);
begin
 ShowMessage(symbol + ' ' + IntToStr(ErrCode));
end;

procedure TfmYuanTa.btnQuoteCurveClick(Sender: TObject);
begin
 Application.CreateForm(TfmQuote, fmQuote);
 fmQuote.Show;
end;

// B1, B2, B3 每次變化均重設
procedure TfmYuanTa.dbeB1Change(Sender: TObject);
begin
 B1_Strategy();
end;

end.
