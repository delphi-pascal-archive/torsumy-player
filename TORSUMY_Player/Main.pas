unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, SonStream, ExtCtrls, ComCtrls, StdCtrls, Buttons, Bass, Menus;

type
  TForm1 = class(TForm)
    Bdd: TOpenDialog;
    Timer1: TTimer;
    TpsSon1: TScrollBar;
    Flanger: TCheckBox;
    Gargle: TCheckBox;
    Chorus: TCheckBox;
    Reverb: TCheckBox;
    Echo: TCheckBox;
    Compressor: TCheckBox;
    Disto: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ParaEQLOW: TTrackBar;
    ParaEQMED: TTrackBar;
    ParaEQHIGH: TTrackBar;
    Equaliseur: TCheckBox;
    CompressorBar: TTrackBar;
    Bevel1: TBevel;
    FWetS1: TTrackBar;
    FDeptS1: TTrackBar;
    FFeedS1: TTrackBar;
    FFreqS1: TTrackBar;
    FDelayS1: TTrackBar;
    Bevel2: TBevel;
    Bevel3: TBevel;
    CdelayS1: TTrackBar;
    CFreqS1: TTrackBar;
    CfeedS1: TTrackBar;
    CDeptS1: TTrackBar;
    CWetS1: TTrackBar;
    Lire: TSpeedButton;
    Resumer: TSpeedButton;
    Stopper: TSpeedButton;
    Charger: TSpeedButton;
    Bevel4: TBevel;
    DiGainS1: TTrackBar;
    DiEdgeS1: TTrackBar;
    DiPEqCFreqS1: TTrackBar;
    DiPostEqBS1: TTrackBar;
    DiPreLowOffS1: TTrackBar;
    Bevel5: TBevel;
    GadwRateHzS1: TTrackBar;
    Bevel6: TBevel;
    Volume: TTrackBar;
    Frequence: TTrackBar;
    Balance: TTrackBar;
    Label2: TLabel;
    Label4: TLabel;
    LabFreqS1: TLabel;
    LabVolS1: TLabel;
    Label9: TLabel;
    LabBalanceS1: TLabel;
    Bibliotheque: TListBox;
    PopupMenu1: TPopupMenu;
    Sauver: TMenuItem;
    Effacer: TMenuItem;
    Charge: TMenuItem;
    Effacer1: TMenuItem;
    BddS: TSaveDialog;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Label11: TLabel;
    TpsS1: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    LabNomS1: TLabel;
    TORSUMY: TMenuItem;
    procedure ChargerClick(Sender: TObject);
    procedure LireClick(Sender: TObject);
    procedure StopperClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ProgressBar1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TpsSon1Scroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure FlangerClick(Sender: TObject);
    procedure GargleClick(Sender: TObject);
    procedure EchoClick(Sender: TObject);
    procedure CompressorClick(Sender: TObject);
    procedure ChorusClick(Sender: TObject);
    procedure ReverbClick(Sender: TObject);
    procedure DistoClick(Sender: TObject);
    
    procedure ParaEQLOWChange(Sender: TObject);
    procedure ParaEQMEDChange(Sender: TObject);
    procedure ParaEQHIGHChange(Sender: TObject);
    procedure EqualiseurClick(Sender: TObject);
    procedure CompressorBarChange(Sender: TObject);
    procedure FlangerChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PauseClick(Sender: TObject);
    procedure ResumerClick(Sender: TObject);
    procedure ChorusChange(Sender: TObject);
    procedure DistoChange(Sender: TObject);
    procedure GadwRateHzS1Change(Sender: TObject);
    procedure VolumeChange(Sender: TObject);
    procedure FrequenceChange(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure BalanceChange(Sender: TObject);
    procedure BibliothequeClick(Sender: TObject);
    procedure SauverClick(Sender: TObject);
    procedure EffacerClick(Sender: TObject);
    procedure ChargeClick(Sender: TObject);
    procedure Effacer1Click(Sender: TObject);
  private

  public

  end;

const
  MAX_SON = 2;
  DW_SHAPE_GARGLE = 1; //
  LWAVE_FORM_FLANGER = 1; //
  LWAVE_FORM_CHORUS = 1;
  LPHASE_FLANGER =BASS_FX_PHASE_ZERO ;
  LPHASE_CHORUS  =BASS_FX_PHASE_ZERO ;

var
  Form1: TForm1;
  TabSon : array[1..MAX_SON]of TSonStream;
  PATH :string; 
implementation

{$R *.dfm}

procedure TForm1.ChargerClick(Sender: TObject);
begin
  Bdd.FilterIndex:=1;
  if(Bdd.Execute) then Bibliotheque.Items.Add(Bdd.FileName);
end;

procedure TForm1.LireClick(Sender: TObject);
begin
  TabSon[1].Lire(True);
end;

procedure TForm1.StopperClick(Sender: TObject);
begin
  TabSon[1].Stopper;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  TpsSon1.Position:=TabSon[1].PositionEnCours;
  if(TabSon[1].GetNom<>'')then TpsS1.Caption:=Format('VSE VREMYA: %f, VREMYA: %f',
                            [TabSon[1].GetTempsTotal,TabSon[1].GetTempsEnCours]);  
end;

procedure TForm1.ProgressBar1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TabSon[1].ChangerPosition(X);
end;

procedure TForm1.TpsSon1Scroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
begin
  TabSon[1].ChangerPosition(TpsSon1.Position);
end;

procedure TForm1.FlangerClick(Sender: TObject);
begin
if Flanger.Checked = true then
begin
  TabSon[1].AppliquerFlanger;
  TabSon[1].SetFlanger(FwetS1.Position,FDeptS1.Position,FFeedS1.Position,
         FFreqS1.Position,LWAVE_FORM_FLANGER,FDelayS1.Position,LPHASE_FLANGER);
end
else
  TabSon[1].RetirerFlanger;
end;

procedure TForm1.GargleClick(Sender: TObject);
begin
if Gargle.Checked = true then
begin

  TabSon[1].AppliquerGargle;
  TabSon[1].SetGargle(GadwRateHzS1.Position,DW_SHAPE_GARGLE);
end
else
  TabSon[1].RetirerGargle;
end;

procedure TForm1.EchoClick(Sender: TObject);
begin
if Echo.Checked = true then
  TabSon[1].AppliquerEcho
else
  TabSon[1].RetirerEcho;
end;

procedure TForm1.CompressorClick(Sender: TObject);
begin
if Compressor.Checked = true then
begin
 TabSon[1].AppliquerCompressor;
 TabSon[1].SetCompressor(CompressorBar.Position);
 
end
else
  TabSon[1].RetirerCompressor;
end;

procedure TForm1.ChorusClick(Sender: TObject);
begin
if Chorus.Checked = true then
begin
  TabSon[1].AppliquerChorus ;
  TabSon[1].SetChorus( CWetS1.Position,CDeptS1.Position,CFeedS1.Position,
                    CFreqS1.Position,LWAVE_FORM_CHORUS,CDelayS1.Position,LPHASE_CHORUS);
  
end
else
  TabSon[1].RetirerChorus;
end;

procedure TForm1.ReverbClick(Sender: TObject);
begin
if Reverb.Checked = true then
  TabSon[1].AppliquerReverb
else
  TabSon[1].RetirerReverb;
end;


procedure TForm1.DistoClick(Sender: TObject);
begin

if Disto.Checked = true then
begin
  TabSon[1].AppliquerDistortion;
  TabSon[1].SetDistortion(DiGainS1.Position,DiEdgeS1.Position,
            DiPEqCFreqS1.Position,DiPostEqBS1.Position,DiPreLowOffS1.Position);
  
end
else
  TabSon[1].RetirerDistortion;
end;

procedure TForm1.ParaEQLOWChange(Sender: TObject);
begin
  TabSon[1].SetParamEQLow(ParaEQLOW.Position);
end;

procedure TForm1.ParaEQMEDChange(Sender: TObject);
begin
  TabSon[1].SetParamEQMed(ParaEQMED.Position);
end;

procedure TForm1.ParaEQHIGHChange(Sender: TObject);
begin
  TabSon[1].SetParamEQHigh(ParaEQHIGH.Position);
end;

procedure TForm1.EqualiseurClick(Sender: TObject);
begin
if Equaliseur.Checked = true then
begin
  TabSon[1].AppliquerParamEQLow;
  TabSon[1].AppliquerParamEQMed;
  TabSon[1].AppliquerParamEQHigh;
  TabSon[1].SetParamEQLow(ParaEQLOW.Position);
  TabSon[1].SetParamEQMed(ParaEQMED.Position);
  TabSon[1].SetParamEQHigh(ParaEQHIGH.Position);
end
else
begin
  TabSon[1].RetirerParamEQLow;
  TabSon[1].RetirerParamEQMed;
  TabSon[1].RetirerParamEQHigh;
end;
end;

procedure TForm1.CompressorBarChange(Sender: TObject);
begin
  TabSon[1].SetCompressor(CompressorBar.Position);
end;

procedure TForm1.FlangerChange(Sender: TObject);
begin
  TabSon[1].SetFlanger(FwetS1.Position,FDeptS1.Position,FFeedS1.Position,
          FFreqS1.Position,LWAVE_FORM_FLANGER,FDelayS1.Position,LPHASE_FLANGER);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  PATH := ExtractFilePath(Application.ExeName);
  TabSon[1]:=TSonStream.Create;
  {
    Biblioteka TORSUMYPlayer
  }

  FWetS1.Max:=trunc(TabSon[1].GetMaxFlangerWetDryMix);
  FDeptS1.Max:=trunc(TabSon[1].GetMaxFlangerDepth);
  FFeedS1.Max:=trunc(TabSon[1].GetMaxFlangerFeedback);
  FFreqS1.Max:=trunc(TabSon[1].GetMaxFlangerFrquency);
  FDelayS1.Max:=trunc(TabSon[1].GetMaxFlangerDelay);

  FWetS1.Min:=trunc(TabSon[1].GetMinFlangerWetDryMix);
  FDeptS1.Min:=trunc(TabSon[1].GetMinFlangerDepth);
  FFeedS1.Min:=trunc(TabSon[1].GetMinFlangerFeedback);
  FFreqS1.Min:=trunc(TabSon[1].GetMinFlangerFrquency);
  FDelayS1.Min:=trunc(TabSon[1].GetMinFlangerDelay);

  FWetS1.Position:=trunc(TabSon[1].GetIniFlangerWetDryMix);
  FDeptS1.Position:=trunc(TabSon[1].GetIniFlangerDepth);
  FFeedS1.Position:=trunc(TabSon[1].GetIniFlangerFeedback);
  FFreqS1.Position:=trunc(TabSon[1].GetIniFlangerFrquency);
  FDelayS1.Position:=trunc(TabSon[1].GetIniFlangerDelay);

  CWetS1.Max:=trunc(TabSon[1].GetMaxChorusWetDryMix);
  CDeptS1.Max:=trunc(TabSon[1].GetMaxChorusDepth);
  CFeedS1.Max:=trunc(TabSon[1].GetMaxChorusFeedback);
  CFreqS1.Max:=trunc(TabSon[1].GetMaxChorusFrquency);
  CDelayS1.Max:=trunc(TabSon[1].GetMaxChorusDelay);

  CWetS1.Min:=trunc(TabSon[1].GetMinChorusWetDryMix);
  CDeptS1.Min:=trunc(TabSon[1].GetMinChorusDepth);
  CFeedS1.Min:=trunc(TabSon[1].GetMinChorusFeedback);
  CFreqS1.Min:=trunc(TabSon[1].GetMinChorusFrquency);
  CDelayS1.Min:=trunc(TabSon[1].GetMinChorusDelay);

  CWetS1.Position:=trunc(TabSon[1].GetIniChorusWetDryMix);
  CDeptS1.Position:=trunc(TabSon[1].GetIniChorusDepth);
  CFeedS1.Position:=trunc(TabSon[1].GetIniChorusFeedback);
  CFreqS1.Position:=trunc(TabSon[1].GetIniChorusFrquency);
  CDelayS1.Position:=trunc(TabSon[1].GetIniChorusDelay);

  ParaEQLOW.Min:=trunc(TabSon[1].GetMinParamEQGain);
  ParaEQLOW.Max:=trunc(TabSon[1].GetMaxParamEQGain);
  ParaEQLOW.Position:=trunc(TabSon[1].GetIniParamEQGain);

  ParaEQMED.Min:=trunc(TabSon[1].GetMinParamEQGain);
  ParaEQMED.Max:=trunc(TabSon[1].GetMaxParamEQGain);
  ParaEQMED.Position:=trunc(TabSon[1].GetIniParamEQGain);

  ParaEQHIGH.Min:=trunc(TabSon[1].GetMinParamEQGain);
  ParaEQHIGH.Max:=trunc(TabSon[1].GetMaxParamEQGain);
  ParaEQHIGH.Position:=trunc(TabSon[1].GetIniParamEQGain);

  CompressorBar.Max:=trunc(TabSon[1].GetMaxCompressorGain);
  CompressorBar.Min:=trunc(TabSon[1].GetMinCompressorGain);
  CompressorBar.Position:=trunc(TabSon[1].GetIniCompressorGain);

  DiGainS1.Max:=trunc(TabSon[1].GetMaxDistortionGain);
  DiEdgeS1.Max:=trunc(TabSon[1].GetMaxDistortionEdge);
  DiPEqCFreqS1.Max:=trunc(TabSon[1].GetMaxDistortionPostEqCenterFrequency);
  DiPostEqBS1.Max:=trunc(TabSon[1].GetMaxDistortionPostEqBandwith);
  DiPreLowOffS1.Max:=trunc(TabSon[1].GetMaxDistortionPreLowpassCutOff);

  DiGainS1.Min:=trunc(TabSon[1].GetMinDistortionGain);
  DiEdgeS1.Min:=trunc(TabSon[1].GetMinDistortionEdge);
  DiPEqCFreqS1.Min:=trunc(TabSon[1].GetMinDistortionPostEqCenterFrequency);
  DiPostEqBS1.Min:=trunc(TabSon[1].GetMinDistortionPostEqBandwith);
  DiPreLowOffS1.Min:=trunc(TabSon[1].GetMinDistortionPreLowpassCutOff);

  DiGainS1.Position:=trunc(TabSon[1].GetIniDistortionGain);
  DiEdgeS1.Position:=trunc(TabSon[1].GetIniDistortionEdge);
  DiPEqCFreqS1.Position:=trunc(TabSon[1].GetIniDistortionPostEqCenterFrequency);
  DiPostEqBS1.Position:=trunc(TabSon[1].GetIniDistortionPostEqBandwith);
  DiPreLowOffS1.Position:=trunc(TabSon[1].GetIniDistortionPreLowpassCutOff);

  GadwRateHzS1.Max:=trunc(TabSon[1].GetMaxGargleDwRateHz);
  GadwRateHzS1.Min:=trunc(TabSon[1].GetMinGargleDwRateHz);
  GadwRateHzS1.Position:=trunc(TabSon[1].GetIniGargleDwRateHz);
  GadwRateHzS1.Frequency:=100;

  Volume.Min:=TabSon[1].GetVolumeMin;
  Volume.Max:=TabSon[1].GetVolumeMax;
  Volume.Position:=TabSon[1].GetVolume;

  Frequence.Max:=TabSon[1].GetFrequenceMax;
  Frequence.Position:=TabSon[1].GetFrequence;
  Frequence.Min:=TabSon[1].GetFrequenceMin;

  Balance.Min:=TabSon[1].GetPanMin;
  Balance.Max:=TabSon[1].GetPanMax;
  Balance.Position:=TabSon[1].GetPanIni;

  LabNomS1.Transparent:=true;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TabSon[1].Destroy;
end;

procedure TForm1.PauseClick(Sender: TObject);
begin
  TabSon[1].Lire(False);
end;

procedure TForm1.ResumerClick(Sender: TObject);
begin
  TabSon[1].Lire(False);
end;

procedure TForm1.ChorusChange(Sender: TObject);
begin
  TabSon[1].SetChorus( CWetS1.Position,CDeptS1.Position,CFeedS1.Position,
      CFreqS1.Position,LWAVE_FORM_CHORUS,CDelayS1.Position,LPHASE_CHORUS);
end;

procedure TForm1.DistoChange(Sender: TObject);
begin
  TabSon[1].SetDistortion(DiGainS1.Position,DiEdgeS1.Position,
            DiPEqCFreqS1.Position,DiPostEqBS1.Position,DiPreLowOffS1.Position);
end;

procedure TForm1.GadwRateHzS1Change(Sender: TObject);
begin
  TabSon[1].SetGargle(GadwRateHzS1.Position,DW_SHAPE_GARGLE);
end;

procedure TForm1.VolumeChange(Sender: TObject);
begin
  TabSon[1].SetVolume(Volume.Position);
  LabVolS1.Caption:=Format('%d',[TabSon[1].GetVolume]);
end;

procedure TForm1.FrequenceChange(Sender: TObject);
begin
  TabSon[1].SetFrequence(Frequence.Position);
  LabFreqS1.Caption:=Format('%d',[TabSon[1].GetFrequence]);
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
  Frequence.Position:=TabSon[1].GetFrequenceIni;
end;

procedure TForm1.BalanceChange(Sender: TObject);
begin
  TabSon[1].SetPan(Balance.Position);
  LabBalanceS1.Caption:=Format('%d',[Balance.Position]);
end;

procedure TForm1.BibliothequeClick(Sender: TObject);
begin
  TabSon[1].Charger(Bibliotheque.Items.Strings[Bibliotheque.itemIndex]);
  TpsSon1.Max:=TabSon[1].LongueurTotal;
  LabNomS1.Caption:=' '+TabSon[1].GetNom;
  Equaliseur.Checked:=false;
  Flanger.Checked:=false;
  Chorus.Checked:=false;
  Disto.Checked:=false;
  Gargle.Checked:=false;
  Echo.Checked:=false;
  Reverb.Checked:=false;
  Compressor.Checked:=false;
end;

procedure TForm1.SauverClick(Sender: TObject);
begin
  if(BddS.Execute)then Bibliotheque.Items.SaveToFile(BddS.FileName+'.dat');
end;

procedure TForm1.EffacerClick(Sender: TObject);
begin
  Bibliotheque.Clear;
end;

procedure TForm1.ChargeClick(Sender: TObject);
begin
  Bdd.FilterIndex:=2;

  if(Bdd.Execute) then Bibliotheque.Items.LoadFromFile(Bdd.FileName);
end;

procedure TForm1.Effacer1Click(Sender: TObject);
begin
  Bibliotheque.Items.Delete(Bibliotheque.ItemIndex);
end;

end.
