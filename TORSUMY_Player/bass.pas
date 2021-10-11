{
Biblioteka Bass TORSUMYPlayer
}
unit Bass;

interface

uses
  Windows;

const
  BASSVERSION = $203;             // Biblioteka Bass TORSUMYPlayer

  //
  DW_ERROR = Cardinal(-1); // -1 (DWORD)
  QW_ERROR = Int64(-1);    // -1 (QWORD)

  //
  BASS_OK                 = 0;    //
  BASS_ERROR_MEM          = 1;    //
  BASS_ERROR_FILEOPEN     = 2;    // 
  BASS_ERROR_DRIVER       = 3;    // 
  BASS_ERROR_BUFLOST      = 4;    // 
  BASS_ERROR_HANDLE       = 5;    // 
  BASS_ERROR_FORMAT       = 6;    // 
  BASS_ERROR_POSITION     = 7;    //
  BASS_ERROR_INIT         = 8;    // 
  BASS_ERROR_START        = 9;    // 
  BASS_ERROR_ALREADY      = 14;   // 
  BASS_ERROR_NOPAUSE      = 16;   // 
  BASS_ERROR_NOCHAN       = 18;   // 
  BASS_ERROR_ILLTYPE      = 19;   // 
  BASS_ERROR_ILLPARAM     = 20;   // 
  BASS_ERROR_NO3D         = 21;   // 
  BASS_ERROR_NOEAX        = 22;   // 
  BASS_ERROR_DEVICE       = 23;   // 
  BASS_ERROR_NOPLAY       = 24;   // 
  BASS_ERROR_FREQ         = 25;   // 
  BASS_ERROR_NOTFILE      = 27;   // 
  BASS_ERROR_NOHW         = 29;   // 
  BASS_ERROR_EMPTY        = 31;   // 
  BASS_ERROR_NONET        = 32;   // 
  BASS_ERROR_CREATE       = 33;   // 
  BASS_ERROR_NOFX         = 34;   // 
  BASS_ERROR_PLAYING      = 35;   // 
  BASS_ERROR_NOTAVAIL     = 37;   // 
  BASS_ERROR_DECODE       = 38;   // 
  BASS_ERROR_DX           = 39;   // 
  BASS_ERROR_TIMEOUT      = 40;   // 
  BASS_ERROR_FILEFORM     = 41;   // 
  BASS_ERROR_SPEAKER      = 42;   // 
  BASS_ERROR_VERSION      = 43;   // 
  BASS_ERROR_CODEC        = 44;   // 
  BASS_ERROR_UNKNOWN      = -1;   // 

  // 
  BASS_DEVICE_8BITS       = 1;    // 
  BASS_DEVICE_MONO        = 2;    // 
  BASS_DEVICE_3D          = 4;    // 
  {

  }
  BASS_DEVICE_LATENCY     = 256;  // 
  BASS_DEVICE_SPEAKERS    = 2048; // 
  BASS_DEVICE_NOSPEAKER   = 4096; // 

  // 
  BASS_OBJECT_DS          = 1;   // 
  BASS_OBJECT_DS3DL       = 2;   // 

  // 
  DSCAPS_CONTINUOUSRATE   = $00000010;
  {  }
  DSCAPS_EMULDRIVER       = $00000020;
  {  }
  DSCAPS_CERTIFIED        = $00000040;
  {  }
  {
   
  }
  DSCAPS_SECONDARYMONO    = $00000100;     // 
  DSCAPS_SECONDARYSTEREO  = $00000200;     // 
  DSCAPS_SECONDARY8BIT    = $00000400;     // 
  DSCAPS_SECONDARY16BIT   = $00000800;     // 

  // 
  DSCCAPS_EMULDRIVER = DSCAPS_EMULDRIVER;
  {  }
  DSCCAPS_CERTIFIED = DSCAPS_CERTIFIED;
  {  }

  // defines for formats field of BASS_RECORDINFO (from MMSYSTEM.H)
  WAVE_FORMAT_1M08       = $00000001;      // 
  WAVE_FORMAT_1S08       = $00000002;      // 
  WAVE_FORMAT_1M16       = $00000004;      // 
  WAVE_FORMAT_1S16       = $00000008;      // 
  WAVE_FORMAT_2M08       = $00000010;      // 
  WAVE_FORMAT_2S08       = $00000020;      // 
  WAVE_FORMAT_2M16       = $00000040;      // 
  WAVE_FORMAT_2S16       = $00000080;      // 
  WAVE_FORMAT_4M08       = $00000100;      // 
  WAVE_FORMAT_4S08       = $00000200;      // 
  WAVE_FORMAT_4M16       = $00000400;      // 
  WAVE_FORMAT_4S16       = $00000800;      // 

  // Sample info flags
  BASS_SAMPLE_8BITS       = 1;   // 
  BASS_SAMPLE_FLOAT       = 256; // 
  BASS_SAMPLE_MONO        = 2;   // 
  BASS_SAMPLE_LOOP        = 4;   // 
  BASS_SAMPLE_3D          = 8;   // 
  BASS_SAMPLE_SOFTWARE    = 16;  // 
  BASS_SAMPLE_MUTEMAX     = 32;  // 
  BASS_SAMPLE_VAM         = 64;  // 
  BASS_SAMPLE_FX          = 128; // 
  BASS_SAMPLE_OVER_VOL    = $10000; // 
  BASS_SAMPLE_OVER_POS    = $20000; // 
  BASS_SAMPLE_OVER_DIST   = $30000; // 

  BASS_STREAM_PRESCAN     = $20000; // 
  BASS_MP3_SETPOS         = BASS_STREAM_PRESCAN;
  BASS_STREAM_AUTOFREE	  = $40000; // 
  BASS_STREAM_RESTRATE	  = $80000; // 
  BASS_STREAM_BLOCK       = $100000;// 
  BASS_STREAM_DECODE      = $200000;// 
  BASS_STREAM_STATUS      = $800000;// 

  BASS_MUSIC_FLOAT        = BASS_SAMPLE_FLOAT; // 
  BASS_MUSIC_MONO         = BASS_SAMPLE_MONO; // 
  BASS_MUSIC_LOOP         = BASS_SAMPLE_LOOP; // 
  BASS_MUSIC_3D           = BASS_SAMPLE_3D; // 
  BASS_MUSIC_FX           = BASS_SAMPLE_FX; // 
  BASS_MUSIC_AUTOFREE     = BASS_STREAM_AUTOFREE; // 
  BASS_MUSIC_DECODE       = BASS_STREAM_DECODE; // 
  BASS_MUSIC_PRESCAN      = BASS_STREAM_PRESCAN; // 
  BASS_MUSIC_CALCLEN      = BASS_MUSIC_PRESCAN;
  BASS_MUSIC_RAMP         = $200;  // 
  BASS_MUSIC_RAMPS        = $400;  // 
  BASS_MUSIC_SURROUND     = $800;  // 
  BASS_MUSIC_SURROUND2    = $1000; // 
  BASS_MUSIC_FT2MOD       = $2000; // 
  BASS_MUSIC_PT1MOD       = $4000; // 
  BASS_MUSIC_NONINTER     = $10000; // 
  BASS_MUSIC_POSRESET     = $8000; // 
  BASS_MUSIC_POSRESETEX   = $400000; // 
  BASS_MUSIC_STOPBACK     = $80000; // 
  BASS_MUSIC_NOSAMPLE     = $100000; // 

  // 
  BASS_SPEAKER_FRONT      = $1000000;  // 
  BASS_SPEAKER_REAR       = $2000000;  // 
  BASS_SPEAKER_CENLFE     = $3000000;  // 
  BASS_SPEAKER_REAR2      = $4000000;  // 
  BASS_SPEAKER_LEFT       = $10000000; // 
  BASS_SPEAKER_RIGHT      = $20000000; // 
  BASS_SPEAKER_FRONTLEFT  = BASS_SPEAKER_FRONT or BASS_SPEAKER_LEFT;
  BASS_SPEAKER_FRONTRIGHT = BASS_SPEAKER_FRONT or BASS_SPEAKER_RIGHT;
  BASS_SPEAKER_REARLEFT   = BASS_SPEAKER_REAR or BASS_SPEAKER_LEFT;
  BASS_SPEAKER_REARRIGHT  = BASS_SPEAKER_REAR or BASS_SPEAKER_RIGHT;
  BASS_SPEAKER_CENTER     = BASS_SPEAKER_CENLFE or BASS_SPEAKER_LEFT;
  BASS_SPEAKER_LFE        = BASS_SPEAKER_CENLFE or BASS_SPEAKER_RIGHT;
  BASS_SPEAKER_REAR2LEFT  = BASS_SPEAKER_REAR2 or BASS_SPEAKER_LEFT;
  BASS_SPEAKER_REAR2RIGHT = BASS_SPEAKER_REAR2 or BASS_SPEAKER_RIGHT;

  BASS_UNICODE            = $80000000;

  BASS_RECORD_PAUSE       = $8000; // 

  // 
  BASS_VAM_HARDWARE       = 1;
  {
    
  }
  BASS_VAM_SOFTWARE       = 2;
  {
    
  }

  // 
  {
    
  }
  BASS_VAM_TERM_TIME      = 4;
  {
    
  }
  BASS_VAM_TERM_DIST      = 8;
  {
   
  }
  BASS_VAM_TERM_PRIO      = 16;
  {
   
  }

  // 
  BASS_CTYPE_SAMPLE       = 1;
  BASS_CTYPE_RECORD       = 2;
  BASS_CTYPE_STREAM       = $10000;
  BASS_CTYPE_STREAM_OGG   = $10002;
  BASS_CTYPE_STREAM_MP1   = $10003;
  BASS_CTYPE_STREAM_MP2   = $10004;
  BASS_CTYPE_STREAM_MP3   = $10005;
  BASS_CTYPE_STREAM_AIFF  = $10006;
  BASS_CTYPE_STREAM_WAV   = $40000; // 
  BASS_CTYPE_STREAM_WAV_PCM = $50001;
  BASS_CTYPE_STREAM_WAV_FLOAT = $50003;
  BASS_CTYPE_MUSIC_MOD    = $20000;
  BASS_CTYPE_MUSIC_MTM    = $20001;
  BASS_CTYPE_MUSIC_S3M    = $20002;
  BASS_CTYPE_MUSIC_XM     = $20003;
  BASS_CTYPE_MUSIC_IT     = $20004;
  BASS_CTYPE_MUSIC_MO3    = $00100; // 

  // 
  BASS_3DMODE_NORMAL      = 0;
  {  }
  BASS_3DMODE_RELATIVE    = 1;
  {

  }
  BASS_3DMODE_OFF         = 2;
  {
    
  }

  // 
  EAX_ENVIRONMENT_GENERIC           = 0;
  EAX_ENVIRONMENT_PADDEDCELL        = 1;
  EAX_ENVIRONMENT_ROOM              = 2;
  EAX_ENVIRONMENT_BATHROOM          = 3;
  EAX_ENVIRONMENT_LIVINGROOM        = 4;
  EAX_ENVIRONMENT_STONEROOM         = 5;
  EAX_ENVIRONMENT_AUDITORIUM        = 6;
  EAX_ENVIRONMENT_CONCERTHALL       = 7;
  EAX_ENVIRONMENT_CAVE              = 8;
  EAX_ENVIRONMENT_ARENA             = 9;
  EAX_ENVIRONMENT_HANGAR            = 10;
  EAX_ENVIRONMENT_CARPETEDHALLWAY   = 11;
  EAX_ENVIRONMENT_HALLWAY           = 12;
  EAX_ENVIRONMENT_STONECORRIDOR     = 13;
  EAX_ENVIRONMENT_ALLEY             = 14;
  EAX_ENVIRONMENT_FOREST            = 15;
  EAX_ENVIRONMENT_CITY              = 16;
  EAX_ENVIRONMENT_MOUNTAINS         = 17;
  EAX_ENVIRONMENT_QUARRY            = 18;
  EAX_ENVIRONMENT_PLAIN             = 19;
  EAX_ENVIRONMENT_PARKINGLOT        = 20;
  EAX_ENVIRONMENT_SEWERPIPE         = 21;
  EAX_ENVIRONMENT_UNDERWATER        = 22;
  EAX_ENVIRONMENT_DRUGGED           = 23;
  EAX_ENVIRONMENT_DIZZY             = 24;
  EAX_ENVIRONMENT_PSYCHOTIC         = 25;
  // 
  EAX_ENVIRONMENT_COUNT             = 26;

  // 
  BASS_3DALG_DEFAULT                = 0;
  {
    
  }
  BASS_3DALG_OFF                    = 1;
  {
  
  }
  BASS_3DALG_FULL                   = 2;
  {
   
  }
  BASS_3DALG_LIGHT                  = 3;
  {
    
  }

  {
    
  }
  BASS_SYNC_POS                     = 0;
  {
    
  }
  BASS_SYNC_END                     = 2;
  {
   
  }
  BASS_SYNC_META                    = 4;
  {
    
  }
  BASS_SYNC_SLIDE                   = 5;
  {
    
  }
  BASS_SYNC_STALL                   = 6;
  {
   
  }
  BASS_SYNC_DOWNLOAD                = 7;
  {
    
  }
  BASS_SYNC_FREE                    = 8;
  {
    
  }
  BASS_SYNC_MUSICPOS                = 10;
  {
    
  }
  BASS_SYNC_MUSICINST               = 1;
  {
    
  }
  BASS_SYNC_MUSICFX                 = 3;
  {
    
  }
  BASS_SYNC_MESSAGE                 = $20000000;
  { 

  }
  BASS_SYNC_MIXTIME                 = $40000000;
  {  }
  BASS_SYNC_ONETIME                 = $80000000;
  {  }

  // 
  BASS_ACTIVE_STOPPED = 0;
  BASS_ACTIVE_PLAYING = 1;
  BASS_ACTIVE_STALLED = 2;
  BASS_ACTIVE_PAUSED  = 3;

  // 
  BASS_SLIDE_FREQ     = 1;
  BASS_SLIDE_VOL      = 2;
  BASS_SLIDE_PAN      = 4;

  // 
  BASS_DATA_AVAILABLE = 0;        // 
  BASS_DATA_FLOAT     = $40000000; // 
  BASS_DATA_FFT512    = $80000000; // 
  BASS_DATA_FFT1024   = $80000001; // 
  BASS_DATA_FFT2048   = $80000002; // 
  BASS_DATA_FFT4096   = $80000003; // 
  BASS_DATA_FFT8192   = $80000004; // 
  BASS_DATA_FFT_INDIVIDUAL = $10; // 
  BASS_DATA_FFT_NOWINDOW = $20;   // 

  // 
  BASS_TAG_ID3        = 0; // 
  BASS_TAG_ID3V2      = 1; // 
  BASS_TAG_OGG        = 2; // 
  BASS_TAG_HTTP       = 3; // 
  BASS_TAG_ICY        = 4; // 
  BASS_TAG_META       = 5; // 
  BASS_TAG_VENDOR     = 9; // 
  BASS_TAG_RIFF_INFO  = $100; // 
  BASS_TAG_MUSIC_NAME = $10000;	// 
  BASS_TAG_MUSIC_MESSAGE = $10001; // 
  BASS_TAG_MUSIC_INST = $10100;	// 
  BASS_TAG_MUSIC_SAMPLE = $10300; // 

  BASS_FX_CHORUS	  = 0;      //
  BASS_FX_COMPRESSOR  = 1;      // 
  BASS_FX_DISTORTION  = 2;      // 
  BASS_FX_ECHO        = 3;      // 
  BASS_FX_FLANGER     = 4;      // 
  BASS_FX_GARGLE      = 5;      // 
  BASS_FX_I3DL2REVERB = 6;      // 
  BASS_FX_PARAMEQ     = 7;      // 
  BASS_FX_REVERB      = 8;      // 

  BASS_FX_PHASE_NEG_180 = 0;
  BASS_FX_PHASE_NEG_90  = 1;
  BASS_FX_PHASE_ZERO    = 2;
  BASS_FX_PHASE_90      = 3;
  BASS_FX_PHASE_180     = 4;

  // 
  BASS_INPUT_OFF    = $10000;
  BASS_INPUT_ON     = $20000;
  BASS_INPUT_LEVEL  = $40000;

  BASS_INPUT_TYPE_MASK    = $ff000000;
  BASS_INPUT_TYPE_UNDEF   = $00000000;
  BASS_INPUT_TYPE_DIGITAL = $01000000;
  BASS_INPUT_TYPE_LINE    = $02000000;
  BASS_INPUT_TYPE_MIC     = $03000000;
  BASS_INPUT_TYPE_SYNTH   = $04000000;
  BASS_INPUT_TYPE_CD      = $05000000;
  BASS_INPUT_TYPE_PHONE   = $06000000;
  BASS_INPUT_TYPE_SPEAKER = $07000000;
  BASS_INPUT_TYPE_WAVE    = $08000000;
  BASS_INPUT_TYPE_AUX     = $09000000;
  BASS_INPUT_TYPE_ANALOG  = $0a000000;

  // 
  BASS_NET_TIMEOUT  = 0;
  BASS_NET_BUFFER   = 1;

  // 
  BASS_FILEPOS_CURRENT    = 0;
  BASS_FILEPOS_DECODE     = BASS_FILEPOS_CURRENT;
  BASS_FILEPOS_DOWNLOAD   = 1;
  BASS_FILEPOS_END        = 2;
  BASS_FILEPOS_START      = 3;

  // 
  BASS_FILE_CLOSE   = 0;
  BASS_FILE_READ    = 1;
  BASS_FILE_LEN     = 3;
  BASS_FILE_SEEK    = 4;

  BASS_STREAMPROC_END = $80000000; // 

  // 
  BASS_MUSIC_ATTRIB_AMPLIFY    = 0;
  BASS_MUSIC_ATTRIB_PANSEP     = 1;
  BASS_MUSIC_ATTRIB_PSCALER    = 2;
  BASS_MUSIC_ATTRIB_BPM        = 3;
  BASS_MUSIC_ATTRIB_SPEED      = 4;
  BASS_MUSIC_ATTRIB_VOL_GLOBAL = 5;
  BASS_MUSIC_ATTRIB_VOL_CHAN   = $100; // 
  BASS_MUSIC_ATTRIB_VOL_INST   = $200; // 

  // 
  BASS_CONFIG_BUFFER        = 0;
  BASS_CONFIG_UPDATEPERIOD  = 1;
  BASS_CONFIG_MAXVOL        = 3;
  BASS_CONFIG_GVOL_SAMPLE   = 4;
  BASS_CONFIG_GVOL_STREAM   = 5;
  BASS_CONFIG_GVOL_MUSIC    = 6;
  BASS_CONFIG_CURVE_VOL     = 7;
  BASS_CONFIG_CURVE_PAN     = 8;
  BASS_CONFIG_FLOATDSP      = 9;
  BASS_CONFIG_3DALGORITHM   = 10;
  BASS_CONFIG_NET_TIMEOUT   = 11;
  BASS_CONFIG_NET_BUFFER    = 12;
  BASS_CONFIG_PAUSE_NOPLAY  = 13;
  BASS_CONFIG_NET_PREBUF    = 15;
  BASS_CONFIG_NET_AGENT     = 16;
  BASS_CONFIG_NET_PROXY     = 17;
  BASS_CONFIG_NET_PASSIVE   = 18;
  BASS_CONFIG_REC_BUFFER    = 19;

type
  DWORD = cardinal;
  BOOL = LongBool;
  FLOAT = Single;
  QWORD = int64;        // 

  HMUSIC = DWORD;       // 
  HSAMPLE = DWORD;      // 
  HCHANNEL = DWORD;     // 
  HSTREAM = DWORD;      //
  HRECORD = DWORD;      // 
  HSYNC = DWORD;        // 
  HDSP = DWORD;         // 
  HFX = DWORD;          // 
  HPLUGIN = DWORD;      // 

  BASS_INFO = record
    flags: DWORD;       // 
    hwsize: DWORD;      // 
    hwfree: DWORD;      // 
    freesam: DWORD;     // 
    free3d: DWORD;      // 
    minrate: DWORD;     // 
    maxrate: DWORD;     // 
    eax: BOOL;          // 
    minbuf: DWORD;      // 
    dsver: DWORD;       // 
    latency: DWORD;     // 
    initflags: DWORD;   // 
    speakers: DWORD;    // 
    driver: PChar;      // 
    freq: DWORD;        // 
  end;

  BASS_RECORDINFO = record
    flags: DWORD;       // 
    formats: DWORD;     // 
    inputs: DWORD;      // 
    singlein: BOOL;     // 
    driver: PChar;      // 
    freq: DWORD;        // 
  end;

  BASS_CHANNELINFO = record
	freq: DWORD;        // 
	chans: DWORD;       // 
	flags: DWORD;       // 
	ctype: DWORD;       // 
	origres: DWORD;     // 
	plugin: HPLUGIN;    // 
  end;

  BASS_PLUGINFORM = record
	ctype: DWORD;       // 
	name: PChar;        // 
	exts: PChar;	    // 
  end;
  PBASS_PLUGINFORMS = ^TBASS_PLUGINFORMS;
  TBASS_PLUGINFORMS = array[0..maxInt div sizeOf(BASS_PLUGINFORM) - 1] of BASS_PLUGINFORM;

  BASS_PLUGININFO = record
	version: DWORD;             // 
	formatc: DWORD;             // 
	formats: PBASS_PLUGINFORMS; // 
  end;
  PBASS_PLUGININFO = ^BASS_PLUGININFO;

  // 
  BASS_SAMPLE = record
    freq: DWORD;        // 
    volume: DWORD;      // 
    pan: Integer;       // 
    flags: DWORD;       // 
    length: DWORD;      // 
    max: DWORD;         // 
    origres: DWORD;     // 
    chans: DWORD;       // 
    mingap: DWORD;      // 
    {
      
    }
    mode3d: DWORD;      // 
    mindist: FLOAT;     // 
    maxdist: FLOAT;     // 
    iangle: DWORD;      // 
    oangle: DWORD;      // 
    outvol: DWORD;      //
    {
     
    }
    vam: DWORD;         // 
    priority: DWORD;    // 
  end;

  // 
  BASS_3DVECTOR = record
    x: FLOAT;           // +=right, -=left
    y: FLOAT;           // +=up, -=down
    z: FLOAT;           // +=front, -=behind
  end;

  BASS_FXCHORUS = record
    fWetDryMix: FLOAT;
    fDepth: FLOAT;
    fFeedback: FLOAT;
    fFrequency: FLOAT;
    lWaveform: DWORD;   // 
    fDelay: FLOAT;
    lPhase: DWORD;      // 
  end;

  BASS_FXCOMPRESSOR = record
    fGain: FLOAT;
    fAttack: FLOAT;
    fRelease: FLOAT;
    fThreshold: FLOAT;
    fRatio: FLOAT;
    fPredelay: FLOAT;
  end;

  BASS_FXDISTORTION = record
    fGain: FLOAT;
    fEdge: FLOAT;
    fPostEQCenterFrequency: FLOAT;
    fPostEQBandwidth: FLOAT;
    fPreLowpassCutoff: FLOAT;
  end;

  BASS_FXECHO = record
    fWetDryMix: FLOAT;
    fFeedback: FLOAT;
    fLeftDelay: FLOAT;
    fRightDelay: FLOAT;
    lPanDelay: BOOL;
  end;

  BASS_FXFLANGER = record
    fWetDryMix: FLOAT;
    fDepth: FLOAT;
    fFeedback: FLOAT;
    fFrequency: FLOAT;
    lWaveform: DWORD;   // 
    fDelay: FLOAT;
    lPhase: DWORD;      // 
  end;

  BASS_FXGARGLE = record
    dwRateHz: DWORD;               // 
    dwWaveShape: DWORD;            // 
  end;

  BASS_FXI3DL2REVERB = record
    lRoom: Longint;                // 
    lRoomHF: Longint;              // 
    flRoomRolloffFactor: FLOAT;    //
    flDecayTime: FLOAT;            // 
    flDecayHFRatio: FLOAT;         // 
    lReflections: Longint;         // 
    flReflectionsDelay: FLOAT;     // 
    lReverb: Longint;              // 
    flReverbDelay: FLOAT;          // 
    flDiffusion: FLOAT;            // 
    flDensity: FLOAT;              // 
    flHFReference: FLOAT;          // 
  end;

  BASS_FXPARAMEQ = record
    fCenter: FLOAT;
    fBandwidth: FLOAT;
    fGain: FLOAT;
  end;

  BASS_FXREVERB = record
    fInGain: FLOAT;                // 
    fReverbMix: FLOAT;             //
    fReverbTime: FLOAT;            // 
    fHighFreqRTRatio: FLOAT;       // 
  end;

  // 
  STREAMPROC = function(handle: HSTREAM; buffer: Pointer; length: DWORD; user: DWORD): DWORD; stdcall;
  {
    
  }

  STREAMFILEPROC = function(action, param1, param2, user: DWORD): DWORD; stdcall;
  {  
    
  }

  DOWNLOADPROC = procedure(buffer: Pointer; length: DWORD; user: DWORD); stdcall;
  {
    
  }

  SYNCPROC = procedure(handle: HSYNC; channel, data: DWORD; user: DWORD); stdcall;
  {
    
  }

  DSPPROC = procedure(handle: HDSP; channel: DWORD; buffer: Pointer; length: DWORD; user: DWORD); stdcall;
  {
   
  }

  RECORDPROC = function(handle: HRECORD; buffer: Pointer; length: DWORD; user: DWORD): BOOL; stdcall;
  {
    
  }


// 
const
  bassdll = 'bass.dll';

function BASS_SetConfig(option, value: DWORD): DWORD; stdcall; external bassdll;
function BASS_GetConfig(option: DWORD): DWORD; stdcall; external bassdll;
function BASS_GetVersion: DWORD; stdcall; external bassdll;
function BASS_GetDeviceDescription(device: DWORD): PChar; stdcall; external bassdll;
function BASS_ErrorGetCode: Integer; stdcall; external bassdll;
function BASS_Init(device: Integer; freq, flags: DWORD; win: HWND; clsid: PGUID): BOOL; stdcall; external bassdll;
function BASS_SetDevice(device: DWORD): BOOL; stdcall; external bassdll;
function BASS_GetDevice: DWORD; stdcall; external bassdll;
function BASS_Free: BOOL; stdcall; external bassdll;
function BASS_GetDSoundObject(obj: DWORD): Pointer; stdcall; external bassdll;
function BASS_GetInfo(var info: BASS_INFO): BOOL; stdcall; external bassdll;
function BASS_Update: BOOL; stdcall; external bassdll;
function BASS_GetCPU: FLOAT; stdcall; external bassdll;
function BASS_Start: BOOL; stdcall; external bassdll;
function BASS_Stop: BOOL; stdcall; external bassdll;
function BASS_Pause: BOOL; stdcall; external bassdll;
function BASS_SetVolume(volume: DWORD): BOOL; stdcall; external bassdll;
function BASS_GetVolume: Integer; stdcall; external bassdll;

function BASS_PluginLoad(filename: PChar; flags: DWORD): HPLUGIN; stdcall; external bassdll;
function BASS_PluginFree(handle: HPLUGIN): BOOL; stdcall; external bassdll;
function BASS_PluginGetInfo(handle: HPLUGIN): PBASS_PLUGININFO; stdcall; external bassdll;

function BASS_Set3DFactors(distf, rollf, doppf: FLOAT): BOOL; stdcall; external bassdll;
function BASS_Get3DFactors(var distf, rollf, doppf: FLOAT): BOOL; stdcall; external bassdll;
function BASS_Set3DPosition(var pos, vel, front, top: BASS_3DVECTOR): BOOL; stdcall; external bassdll;
function BASS_Get3DPosition(var pos, vel, front, top: BASS_3DVECTOR): BOOL; stdcall; external bassdll;
procedure BASS_Apply3D; stdcall; external bassdll;
function BASS_SetEAXParameters(env: Integer; vol, decay, damp: FLOAT): BOOL; stdcall; external bassdll;
function BASS_GetEAXParameters(var env: DWORD; var vol, decay, damp: FLOAT): BOOL; stdcall; external bassdll;

function BASS_MusicLoad(mem: BOOL; f: Pointer; offset, length, flags, freq: DWORD): HMUSIC; stdcall; external bassdll;
function BASS_MusicFree(handle: HMUSIC): BOOL; stdcall; external bassdll;
function BASS_MusicSetAttribute(handle: HMUSIC; attrib,value: DWORD): DWORD; stdcall; external bassdll;
function BASS_MusicGetAttribute(handle: HMUSIC; attrib: DWORD): DWORD; stdcall; external bassdll;
function BASS_MusicGetOrders(handle: HMUSIC): DWORD; stdcall; external bassdll;
function BASS_MusicGetOrderPosition(handle: HMUSIC): DWORD; stdcall; external bassdll;

function BASS_SampleLoad(mem: BOOL; f: Pointer; offset, length, max, flags: DWORD): HSAMPLE; stdcall; external bassdll;
function BASS_SampleCreate(length, freq, chans, max, flags: DWORD): Pointer; stdcall; external bassdll;
function BASS_SampleCreateDone: HSAMPLE; stdcall; external bassdll;
function BASS_SampleFree(handle: HSAMPLE): BOOL; stdcall; external bassdll;
function BASS_SampleGetInfo(handle: HSAMPLE; var info: BASS_SAMPLE): BOOL; stdcall; external bassdll;
function BASS_SampleSetInfo(handle: HSAMPLE; var info: BASS_SAMPLE): BOOL; stdcall; external bassdll;
function BASS_SampleGetChannel(handle: HSAMPLE; onlynew: BOOL): HCHANNEL; stdcall; external bassdll;
function BASS_SampleGetChannels(handle: HSAMPLE; channels: Pointer): DWORD; stdcall; external bassdll;
function BASS_SampleStop(handle: HSAMPLE): BOOL; stdcall; external bassdll;

function BASS_StreamCreate(freq, chans, flags: DWORD; proc: Pointer; user: DWORD): HSTREAM; stdcall; external bassdll;
function BASS_StreamCreateFile(mem: BOOL; f: Pointer; offset, length, flags: DWORD): HSTREAM; stdcall; external bassdll;
function BASS_StreamCreateURL(url: PChar; offset: DWORD; flags: DWORD; proc: DOWNLOADPROC; user: DWORD):HSTREAM; stdcall; external bassdll;
function BASS_StreamCreateFileUser(buffered: BOOL; flags: DWORD; proc: STREAMFILEPROC; user: DWORD): HSTREAM; stdcall; external bassdll;
function BASS_StreamFree(handle: HSTREAM): BOOL; stdcall; external bassdll;
function BASS_StreamGetFilePosition(handle:HSTREAM; mode:DWORD) : DWORD;stdcall;external bassdll;

function BASS_RecordGetDeviceDescription(devnum: DWORD):PChar;stdcall;external bassdll;
function BASS_RecordInit(device: Integer):BOOL;stdcall;external bassdll;
function BASS_RecordSetDevice(device: DWORD): BOOL; stdcall; external bassdll;
function BASS_RecordGetDevice: DWORD; stdcall; external bassdll;
function BASS_RecordFree:BOOL;stdcall;external bassdll;
function BASS_RecordGetInfo(var info:BASS_RECORDINFO):BOOL;stdcall;external bassdll;
function BASS_RecordGetInputName(input:Integer):PChar;stdcall;external bassdll;
function BASS_RecordSetInput(input:Integer; setting:DWORD):BOOL;stdcall;external bassdll;
function BASS_RecordGetInput(input:Integer):DWORD;stdcall;external bassdll;
function BASS_RecordStart(freq,chans,flags:DWORD; proc:RECORDPROC; user:DWORD):HRECORD;stdcall;external bassdll;

function BASS_ChannelBytes2Seconds(handle: DWORD; pos: QWORD): FLOAT; stdcall;external bassdll;
function BASS_ChannelSeconds2Bytes(handle: DWORD; pos: FLOAT): QWORD; stdcall;external bassdll;
function BASS_ChannelGetDevice(handle: DWORD): DWORD; stdcall; external bassdll;
function BASS_ChannelSetDevice(handle, device: DWORD): BOOL; stdcall; external bassdll;
function BASS_ChannelIsActive(handle: DWORD): DWORD; stdcall;external bassdll;
function BASS_ChannelGetInfo(handle: DWORD; var info:BASS_CHANNELINFO):BOOL;stdcall;external bassdll;
function BASS_ChannelGetTags(handle: HSTREAM; tags : DWORD): PChar; stdcall; external bassdll;
function BASS_ChannelSetFlags(handle, flags: DWORD): BOOL; stdcall; external bassdll;
function BASS_ChannelPreBuf(handle, length: DWORD): BOOL; stdcall; external bassdll;
function BASS_ChannelPlay(handle: DWORD; restart: BOOL): BOOL; stdcall; external bassdll;
function BASS_ChannelStop(handle: DWORD): BOOL; stdcall; external bassdll;
function BASS_ChannelPause(handle: DWORD): BOOL; stdcall; external bassdll;
function BASS_ChannelSetAttributes(handle: DWORD; freq, volume, pan: Integer): BOOL; stdcall; external bassdll;
function BASS_ChannelGetAttributes(handle: DWORD; var freq, volume: DWORD; var pan: Integer): BOOL; stdcall; external bassdll;
function BASS_ChannelSlideAttributes(handle: DWORD; freq, volume, pan: Integer; time: DWORD): BOOL; stdcall; external bassdll;
function BASS_ChannelIsSliding(handle: DWORD): DWORD; stdcall;external bassdll;
function BASS_ChannelSet3DAttributes(handle: DWORD; mode: Integer; min, max: FLOAT; iangle, oangle, outvol: Integer): BOOL; stdcall; external bassdll;
function BASS_ChannelGet3DAttributes(handle: DWORD; var mode: DWORD; var min, max: FLOAT; var iangle, oangle, outvol: DWORD): BOOL; stdcall; external bassdll;
function BASS_ChannelSet3DPosition(handle: DWORD; var pos, orient, vel: BASS_3DVECTOR): BOOL; stdcall; external bassdll;
function BASS_ChannelGet3DPosition(handle: DWORD; var pos, orient, vel: BASS_3DVECTOR): BOOL; stdcall; external bassdll;
function BASS_ChannelGetLength(handle: DWORD): QWORD; stdcall; external bassdll;
function BASS_ChannelSetPosition(handle: DWORD; pos: QWORD): BOOL; stdcall; external bassdll;
function BASS_ChannelGetPosition(handle: DWORD): QWORD; stdcall; external bassdll;
function BASS_ChannelGetLevel(handle: DWORD): DWORD; stdcall; external bassdll;
function BASS_ChannelGetData(handle: DWORD; buffer: Pointer; length: DWORD): DWORD; stdcall; external bassdll;
function BASS_ChannelSetSync(handle: DWORD; stype: DWORD; param: QWORD; proc: SYNCPROC; user: DWORD): HSYNC; stdcall; external bassdll;
function BASS_ChannelRemoveSync(handle: DWORD; sync: HSYNC): BOOL; stdcall; external bassdll;
function BASS_ChannelSetDSP(handle: DWORD; proc: DSPPROC; user: DWORD; priority: Integer): HDSP; stdcall; external bassdll;
function BASS_ChannelRemoveDSP(handle: DWORD; dsp: HDSP): BOOL; stdcall; external bassdll;
function BASS_ChannelSetEAXMix(handle: DWORD; mix: FLOAT): BOOL; stdcall; external bassdll;
function BASS_ChannelGetEAXMix(handle: DWORD; var mix: FLOAT): BOOL; stdcall; external bassdll;
function BASS_ChannelSetLink(handle, chan: DWORD): BOOL; stdcall; external bassdll;
function BASS_ChannelRemoveLink(handle, chan: DWORD): BOOL; stdcall; external bassdll;
function BASS_ChannelSetFX(handle, etype: DWORD; priority: Integer): HFX; stdcall; external bassdll;
function BASS_ChannelRemoveFX(handle: DWORD; fx: HFX): BOOL; stdcall; external bassdll;

function BASS_FXSetParameters(handle: HFX; par: Pointer): BOOL; stdcall; external bassdll;
function BASS_FXGetParameters(handle: HFX; par: Pointer): BOOL; stdcall; external bassdll;


function BASS_SPEAKER_N(n: DWORD): DWORD;
function MAKEMUSICPOS(order,row: DWORD): DWORD;
function BASS_SetEAXPreset(env: Integer): BOOL;
{
  This function is defined in the implementation part of this unit.
  It is not part of BASS.DLL but an extra function which makes it easier
  to set the predefined EAX environments.
  env    : a EAX_ENVIRONMENT_xxx constant
}


implementation

function BASS_SPEAKER_N(n: DWORD): DWORD;
begin
  Result := n shl 24;
end;

function MAKEMUSICPOS(order,row: DWORD): DWORD;
begin
  Result := $80000000 or DWORD(MAKELONG(order,row));
end;

function BASS_SetEAXPreset(env: Integer): BOOL;
begin
  case (env) of
    EAX_ENVIRONMENT_GENERIC:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_GENERIC, 0.5, 1.493, 0.5);
    EAX_ENVIRONMENT_PADDEDCELL:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_PADDEDCELL, 0.25, 0.1, 0);
    EAX_ENVIRONMENT_ROOM:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_ROOM, 0.417, 0.4, 0.666);
    EAX_ENVIRONMENT_BATHROOM:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_BATHROOM, 0.653, 1.499, 0.166);
    EAX_ENVIRONMENT_LIVINGROOM:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_LIVINGROOM, 0.208, 0.478, 0);
    EAX_ENVIRONMENT_STONEROOM:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_STONEROOM, 0.5, 2.309, 0.888);
    EAX_ENVIRONMENT_AUDITORIUM:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_AUDITORIUM, 0.403, 4.279, 0.5);
    EAX_ENVIRONMENT_CONCERTHALL:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_CONCERTHALL, 0.5, 3.961, 0.5);
    EAX_ENVIRONMENT_CAVE:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_CAVE, 0.5, 2.886, 1.304);
    EAX_ENVIRONMENT_ARENA:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_ARENA, 0.361, 7.284, 0.332);
    EAX_ENVIRONMENT_HANGAR:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_HANGAR, 0.5, 10.0, 0.3);
    EAX_ENVIRONMENT_CARPETEDHALLWAY:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_CARPETEDHALLWAY, 0.153, 0.259, 2.0);
    EAX_ENVIRONMENT_HALLWAY:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_HALLWAY, 0.361, 1.493, 0);
    EAX_ENVIRONMENT_STONECORRIDOR:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_STONECORRIDOR, 0.444, 2.697, 0.638);
    EAX_ENVIRONMENT_ALLEY:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_ALLEY, 0.25, 1.752, 0.776);
    EAX_ENVIRONMENT_FOREST:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_FOREST, 0.111, 3.145, 0.472);
    EAX_ENVIRONMENT_CITY:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_CITY, 0.111, 2.767, 0.224);
    EAX_ENVIRONMENT_MOUNTAINS:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_MOUNTAINS, 0.194, 7.841, 0.472);
    EAX_ENVIRONMENT_QUARRY:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_QUARRY, 1, 1.499, 0.5);
    EAX_ENVIRONMENT_PLAIN:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_PLAIN, 0.097, 2.767, 0.224);
    EAX_ENVIRONMENT_PARKINGLOT:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_PARKINGLOT, 0.208, 1.652, 1.5);
    EAX_ENVIRONMENT_SEWERPIPE:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_SEWERPIPE, 0.652, 2.886, 0.25);
    EAX_ENVIRONMENT_UNDERWATER:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_UNDERWATER, 1, 1.499, 0);
    EAX_ENVIRONMENT_DRUGGED:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_DRUGGED, 0.875, 8.392, 1.388);
    EAX_ENVIRONMENT_DIZZY:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_DIZZY, 0.139, 17.234, 0.666);
    EAX_ENVIRONMENT_PSYCHOTIC:
      Result := BASS_SetEAXParameters(EAX_ENVIRONMENT_PSYCHOTIC, 0.486, 7.563, 0.806);
    else
      Result := FALSE;
  end;
end;

end.