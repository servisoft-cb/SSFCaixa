unit NBioAPI_Type;

interface

uses
  Windows, classes, SysUtils;

Const
        //Constant for Basic
        NBioAPI_FALSE = 0;
        NBioAPI_TRUE  = 1;

        //NBioAPI_MAX_DEVICE
        NBioAPI_MAX_DEVICE = 254;

        //Constant for Error
        NBioAPIERROR_BASE_GENERAL           = 0;
        NBioAPIERROR_BASE_DEVICE            = 256;
        NBioAPIERROR_BASE_UI                = 512;
        NBioAPIERROR_BASE_NSEARCH           = 768;

        NBioAPIERROR_NONE                   = 0;
        NBioAPIERROR_INVALID_HANDLE         = NBioAPIERROR_BASE_GENERAL + 1;
        NBioAPIERROR_INVALID_POINTER        = NBioAPIERROR_BASE_GENERAL + 2;
        NBioAPIERROR_INVALID_TYPE           = NBioAPIERROR_BASE_GENERAL + 3;
        NBioAPIERROR_FUNCTION_FAIL          = NBioAPIERROR_BASE_GENERAL + 4;
        NBioAPIERROR_STRUCTTYPE_NOT_MATCHED = NBioAPIERROR_BASE_GENERAL + 5;
        NBioAPIERROR_ALREADY_PROCESSED      = NBioAPIERROR_BASE_GENERAL + 6;
        NBioAPIERROR_EXTRACTION_OPEN_FAIL   = NBioAPIERROR_BASE_GENERAL + 7;
        NBioAPIERROR_VERIFICATION_OPEN_FAIL = NBioAPIERROR_BASE_GENERAL + 8;
        NBioAPIERROR_DATA_PROCESS_FAIL      = NBioAPIERROR_BASE_GENERAL + 9;
        NBioAPIERROR_MUST_BE_PROCESSED_DATA = NBioAPIERROR_BASE_GENERAL + 10;
        NBioAPIERROR_INTERNAL_CHECKSUM_FAIL = NBioAPIERROR_BASE_GENERAL + 11;
        NBioAPIERROR_ENCRYPTED_DATA_ERROR   = NBioAPIERROR_BASE_GENERAL + 12;

        NBioAPIERROR_INIT_MAXFINGER         = NBioAPIERROR_BASE_GENERAL + 100;
        NBioAPIERROR_INIT_SAMPLESPERFINGER  = NBioAPIERROR_BASE_GENERAL + 101;
        NBioAPIERROR_INIT_ENROLLQUALITY     = NBioAPIERROR_BASE_GENERAL + 102;
        NBioAPIERROR_INIT_VERIFYQUALITY     = NBioAPIERROR_BASE_GENERAL + 103;
        NBioAPIERROR_INIT_IDENTIFYQUALITY   = NBioAPIERROR_BASE_GENERAL + 104;
        NBioAPIERROR_INIT_SECURITYLEVEL     = NBioAPIERROR_BASE_GENERAL + 105;

        NBioAPIERROR_DEVICE_OPEN_FAIL       = NBioAPIERROR_BASE_DEVICE;
        NBioAPIERROR_INVALID_DEVICE_ID      = NBioAPIERROR_BASE_DEVICE + 1;
        NBioAPIERROR_WRONG_DEVICE_ID        = NBioAPIERROR_BASE_DEVICE + 2;
        NBioAPIERROR_DEVICE_ALREADY_OPENED  = NBioAPIERROR_BASE_DEVICE + 3;
        NBioAPIERROR_DEVICE_NOT_OPENED      = NBioAPIERROR_BASE_DEVICE + 4;
        NBioAPIERROR_DEVICE_BRIGHTNESS      = NBioAPIERROR_BASE_DEVICE + 5;
        NBioAPIERROR_DEVICE_CONTRAST        = NBioAPIERROR_BASE_DEVICE + 6;
        NBioAPIERROR_DEVICE_GAIN            = NBioAPIERROR_BASE_DEVICE + 7;

        NBioAPIERROR_USER_CANCEL            = NBioAPIERROR_BASE_UI + 1;
        NBioAPIERROR_USER_BACK              = NBioAPIERROR_BASE_UI + 2;
        NBioAPIERROR_CAPTURE_TIMEOUT        = NBioAPIERROR_BASE_UI + 3;

        NBioAPIERROR_INIT_MAXCANDIDATE       = NBioAPIERROR_BASE_NSEARCH + 1;
        NBioAPIERROR_NSEARCH_OPEN_FAIL       = NBioAPIERROR_BASE_NSEARCH + 2;
        NBioAPIERROR_NSEARCH_INIT_FAIL       = NBioAPIERROR_BASE_NSEARCH + 3;
        NBioAPIERROR_NSEARCH_MEM_OVERFLOW    = NBioAPIERROR_BASE_NSEARCH + 4;
        NBioAPIERROR_NSEARCH_SAVE_DB         = NBioAPIERROR_BASE_NSEARCH + 5;
        NBioAPIERROR_NSEARCH_LOAD_DB         = NBioAPIERROR_BASE_NSEARCH + 6;
        NBioAPIERROR_NSEARCH_INVALD_TEMPLATE = NBioAPIERROR_BASE_NSEARCH + 7;
        NBioAPIERROR_NSEARCH_OVER_LIMIT      = NBioAPIERROR_BASE_NSEARCH + 8;
        NBioAPIERROR_NSEARCH_IDENTIFY_FAIL   = NBioAPIERROR_BASE_NSEARCH + 9;
        NBioAPIERROR_NSEARCH_LICENSE_LOAD    = NBioAPIERROR_BASE_NSEARCH + 10;
        NBioAPIERROR_NSEARCH_LICENSE_KEY     = NBioAPIERROR_BASE_NSEARCH + 11;
        NBioAPIERROR_NSEARCH_LICENSE_EXPIRED = NBioAPIERROR_BASE_NSEARCH + 12;
        NBioAPIERROR_NSEARCH_DUPLICATED_ID   = NBioAPIERROR_BASE_NSEARCH + 13;


        //Constant for Security Level
        NBioAPI_FIR_SECURITY_LEVEL_LOWEST       = 1;
        NBioAPI_FIR_SECURITY_LEVEL_LOWER        = 2;
        NBioAPI_FIR_SECURITY_LEVEL_LOW          = 3;
        NBioAPI_FIR_SECURITY_LEVEL_BELOW_NORMAL = 4;
        NBioAPI_FIR_SECURITY_LEVEL_NORMAL       = 5;
        NBioAPI_FIR_SECURITY_LEVEL_ABOVE_NORMAL = 6;
        NBioAPI_FIR_SECURITY_LEVEL_HIGH         = 7;
        NBioAPI_FIR_SECURITY_LEVEL_HIGHER       = 8;
        NBioAPI_FIR_SECURITY_LEVEL_HIGHEST      = 9;

        //Constant for Device Name
        NBioAPI_DEVICE_NAME_FDP02     = 1;
        NBioAPI_DEVICE_NAME_FDU01     = 2;
        NBioAPI_DEVICE_NAME_OSU02     = 3;
        NBioAPI_DEVICE_NAME_FDU11     = 4;
        NBioAPI_DEVICE_NAME_FSC01     = 5;
        NBioAPI_DEVICE_NAME_FDU03     = 6;
        NBioAPI_DEVICE_NAME_FDU05     = 7;

        //Constant for DeviceID
        NBioAPI_DEVICE_ID_NONE        = 0;
        NBioAPI_DEVICE_ID_FDP02_0     = 1;
        NBioAPI_DEVICE_ID_FDU01_0     = 2;
        NBioAPI_DEVICE_ID_OSU02_0     = 3;
        NBioAPI_DEVICE_ID_FDU11_0     = 4;
        NBioAPI_DEVICE_ID_FSC01_0     = 5;
        NBioAPI_DEVICE_ID_FDU03_0     = 6;
        NBioAPI_DEVICE_ID_FDU05_0     = 7;
        NBioAPI_DEVICE_ID_AUTO_DETECT = 255;

        //FIRÀÇ ÇüÅÂ
        NBioAPI_FIR_FORM_HANDLE       = 2;
        NBioAPI_FIR_FORM_FULLFIR      = 3;
        NBioAPI_FIR_FORM_TEXTENCODE   = 4;

        //
        NBioAPI_FIR_PURPOSE_VERIFY                         = 1;
        NBioAPI_FIR_PURPOSE_IDENTIFY                       = 2;
        NBioAPI_FIR_PURPOSE_ENROLL                         = 3;
        NBioAPI_FIR_PURPOSE_ENROLL_FOR_VERIFICATION_ONLY   = 4;
        NBioAPI_FIR_PURPOSE_ENROLL_FOR_IDENTIFICATION_ONLY = 5;
        NBioAPI_FIR_PURPOSE_AUDIT                          = 6;
        NBioAPI_FIR_PURPOSE_UPDATE                         = 7;

        //OR flag used only in high 2 bytes.
        NBioAPI_WINDOW_STYLE_POPUP        = 0;
        NBioAPI_WINDOW_STYLE_INVISIBLE    = 1;   //only for NBioAPI_Capture()
        NBioAPI_WINDOW_STYLE_CONTINUOUS   = 2;

        NBioAPI_WINDOW_STYLE_NO_FPIMG     = $00010000;
        NBioAPI_WINDOW_STYLE_TOPMOST      = $00020000;  //default flag and not used after v2.3 (WinCE v1.2)
        NBioAPI_WINDOW_STYLE_NO_WELCOME   = $00040000;  //only for enroll
        NBioAPI_WINDOW_STYLE_NO_TOPMOST   = $00080000;  //additional flag after v2.3 (WinCE v1.2)

type
        NBioAPI_FIR_PURPOSE = WORD;

        //Callback Parameter 0
        //MyCaptureCallbackFunction
        NBioAPI_WINDOW_CALLBACK_PARAM_PTR_0 = ^NBioAPI_WINDOW_CALLBACK_PARAM_0;
        NBioAPI_WINDOW_CALLBACK_PARAM_0 = record
                dwQuality  : DWORD;
                lpImageBuf : array of BYTE;
                lpReserved : Pointer;
        end;

        //Callback Parameter 1
        //MyFinishCallbackFunction
        NBioAPI_WINDOW_CALLBACK_PARAM_PTR_1 = ^NBioAPI_WINDOW_CALLBACK_PARAM_1;
        NBioAPI_WINDOW_CALLBACK_PARAM_1 = record
                dwResult   : DWORD;
                lpReserved : Pointer;
        end;

        //NBioAPI_VERSION
        NBioAPI_VERSION_PTR = ^NBioAPI_VERSION;
        NBioAPI_VERSION = record
                Major : DWORD;
                Minor : DWORD;
        end;

        //NBioAPI_INIT_INFO_0
        NBioAPI_INIT_INFO_PTR_0 = ^NBioAPI_INIT_INFO_0;
        NBioAPI_INIT_INFO_0 = record
                StructureType        : DWORD;           // must be 0
                MaxFingersForEnroll  : DWORD;           // Default = 10
                SamplesPerFinger     : DWORD;           // Default = 2 : not used
                DefaultTimeout       : DWORD;           // Default = 10000ms = 10sec
                EnrollImageQuality   : DWORD;           // Default = 50
                VerifyImageQuality   : DWORD;           // Default = 30
                IdentifyImageQuality : DWORD;           // Default = 50
                SecurityLevel        : DWORD;           // Default = NBioAPI_FIR_SECURITY_LEVEL_NORMAL
        end;

        //NBioAPI_FIR_HEADER
        NBioAPI_FIR_HEADER_PTR = ^NBioAPI_FIR_HEADER;
        NBioAPI_FIR_HEADER = record
                Length     : DWORD;             //Header Length
                DataLength : DWORD;             //Data Length
                Version    : WORD;
                DataType   : WORD;
                Purpose    : WORD;
                Quality    : WORD;
                Reserved   : DWORD;
        end;

        //NBioAPI_FIR
        NBioAPI_FIR_PTR = ^NBioAPI_FIR;
        NBioAPI_FIR = record
                Format : DWORD;                 //NBioBSP_Standard = 1
                Header : NBioAPI_FIR_HEADER;
                Data   : array of BYTE;         //NBioAPI_FIR_DATA --> BYTE
        end;

        //NBioAPI_FIR_PAYLOAD
        NBioAPI_FIR_PAYLOAD_PTR = ^NBioAPI_FIR_PAYLOAD;
        NBioAPI_FIR_PAYLOAD = record
                Length : DWORD;
                Data   : array of ^BYTE;
        end;

        //NBioAPI_FIR_TEXTENCODE
        NBioAPI_FIR_TEXTENCODE_PTR = ^NBioAPI_FIR_TEXTENCODE;
        NBioAPI_FIR_TEXTENCODE = record
                IsWideChar : BOOL;
                TextFIR    : PChar;
        end;

        //InputFir
        InputFir_union = record
                case Integer of
                        0 : (FIRinBSP : Pointer);
                        1 : (FIR      : NBioAPI_FIR_PTR);
                        2 : (TextFIR  : NBioAPI_FIR_TEXTENCODE);
        end;

        //NBioAPI_INPUT_FIR
        NBioAPI_INPUT_FIR_PTR = ^NBioAPI_INPUT_FIR;
        NBioAPI_INPUT_FIR = record
                Form : BYTE;
                InputFir : InputFir_union;
        end;

        //CallBack Function 
        NBioAPI_WINDOW_CALLBACK = Function(pCallbackParam, pUserParam : Pointer) : DWORD; stdcall;

        //NBioAPI_CALLBACK_INFO
        NBioAPI_CALLBACK_INFO = record
                CallBackType      : DWORD;
                CallBackFunction  : NBioAPI_WINDOW_CALLBACK;
                UserCallBackParam : Pointer;
        end;

        //NBioAPI_WINDOW_OPTION_2
        NBioAPI_WINDOW_OPTION_PTR_2 = ^NBioAPI_WINDOW_OPTION_2;
        NBioAPI_WINDOW_OPTION_2 = record
                FPForeColor             : array [0..2] of BYTE;    //Fingerprint RGB color
                FPBackColor             : array [0..2] of BYTE;    //Background RGB color
                DisableFingerForEnroll  : array [0..9] of BYTE;    //0=Enable, 1=Disable / [0]=Right Thumb,..[5]=Left Thumb,..[9]=Left little
                Reserved1               : array [0..3] of DWORD;
                Reserved2               : Pointer;
        end;
        
        //NBioAPI_WINDOW_OPTION
        NBioAPI_WINDOW_OPTION_PTR = ^NBioAPI_WINDOW_OPTION;
        NBioAPI_WINDOW_OPTION = record
                Length                  : DWORD;
                WindowStyle             : DWORD;
                ParentWnd               : HWND;
                FingerWnd               : HWND;
                CaptureCallBackInfo     : NBioAPI_CALLBACK_INFO;
                FinishCallBackInfo      : NBioAPI_CALLBACK_INFO;
                CaptionMsg              : LPSTR;
                CancelMsg               : LPSTR;
                Option2                 : NBioAPI_WINDOW_OPTION_PTR_2;
        end;

        //NBioAPI_TEMPLATE_DATA_2
        NBioAPI_TEMPLATE_DATA_PTR = ^NBioAPI_TEMPLATE_DATA;
        NBioAPI_TEMPLATE_DATA = record
                Length          : DWORD;                        //sizeof of structure
                Data            : array [0..399] of BYTE;
        end;

        //NBioAPI_TEMPLATE_DATA_2
        NBioAPI_TEMPLATE_DATA_PTR_2 = ^NBioAPI_TEMPLATE_DATA_2;
        NBioAPI_TEMPLATE_DATA_2 = record
                Length : DWORD;         //just length of Data (not sizeof structure)
                Data   : Pointer;       //variable length of data (NBioAPI_UINT8*)
        end;

        //NBioAPI_FINGER_DATA
        NBioAPI_FINGER_DATA_PTR = ^NBioAPI_FINGER_DATA;
        NBioAPI_FINGER_DATA = record
                Length          : DWORD;                        //sizeof of structure
                FingerID        : BYTE;                         //NBioAPI_FINGER_ID
                Template        : NBioAPI_TEMPLATE_DATA_PTR;
        end;

        //NBioAPI_FINGER_DATA_2
        NBioAPI_FINGER_DATA_PTR_2 = ^NBioAPI_FINGER_DATA_2;
        NBioAPI_FINGER_DATA_2 = record
                Length          : DWORD;                        //sizeof of structure
                FingerID        : BYTE;                         //NBioAPI_FINGER_ID
                Template        : NBioAPI_TEMPLATE_DATA_PTR_2;  //Template = NBioAPI_TEMPLATE_DATA_2 * SamplesPerFinger
        end;

        //NBioAPI_EXPORT_DATA
        NBioAPI_EXPORT_DATA_PTR = ^NBioAPI_EXPORT_DATA;
        NBioAPI_EXPORT_DATA = record
                Length                  : DWORD;                        //sizeof of structure
                EncryptType             : BYTE;                         //Minutiae type
                FingerNum               : BYTE;
                DefaultFingerID         : BYTE;                         //NBioAPI_FINGER_ID
                SamplesPerFinger        : BYTE;
                FingerData              : NBioAPI_FINGER_DATA_PTR;      //only used for MINCONV_TYPE_FDP ~ MINCONV_TYPE_OLD_FDA
                FingerData2             : NBioAPI_FINGER_DATA_PTR_2;    //used for all type
        end;

        //Get NBioAPI_VERSION
        TFNBioAPI_GetVersion  = Function(hHandle : DWORD; pVersion : NBioAPI_VERSION_PTR):DWORD; stdcall;
        //Get NBioAPI_Infomation
        TFNBioAPI_GetInitInfo = Function(hHandle : DWORD; nStructureType : BYTE ; pInitInfo : NBioAPI_INIT_INFO_PTR_0):DWORD; stdcall;
        //Set NBioAPI_Information
        TFNBioAPI_SetInitInfo = Function(hHandle : DWORD; nStructureType : BYTE ; pInitInfo : NBioAPI_INIT_INFO_PTR_0):DWORD; stdcall;
        //Open Device
        TFNBioAPI_OpenDevice  = Function(hHandle : DWORD; nDeviceID : WORD):DWORD; stdcall;
        //Close Device
        TFNBioAPI_CloseDevice = Function(hHandle : DWORD; nDeviceID : WORD):DWORD; stdcall;

        TFNBioAPI_Init        = Function(phHandle : Pointer):DWORD; stdcall;

        TFNBioAPI_Terminate   = Function(hHandle : DWORD): DWORD; stdcall;

        //(NBioAPI_HANDLE hHandle, NBioAPI_VOID_PTR pFIR)
        TFNBioAPI_FreeFIR     = Function(hHandle : DWORD; pFIR : Pointer):DWORD; stdcall;

        TFNBioAPI_FreeFIRHandle    = Function(hHandle, hFIR : DWORD):DWORD; stdcall;

        //(NBioAPI_HANDLE hHandle, NBioAPI_UINT32* pNumDevice, NBioAPI_DEVICE_ID** ppDeviceID)
        TFNBioAPI_EnumerateDevice  = Function(hHandle : DWORD; pNumDevice : Pointer; ppDeviceID : Pointer): DWORD; stdcall;

        TFNBioAPI_Enroll           = Function(  hHandle                 : DWORD;
                                                const piStoredTemplate  : NBioAPI_INPUT_FIR_PTR;
                                                phNewTemplate           : Pointer;
                                                const pPayload          : NBioAPI_FIR_PAYLOAD_PTR;
                                                nTimeout                : Integer;
                                                phAuditData             : Pointer;
                                                const pWindowOption     : NBioAPI_WINDOW_OPTION_PTR):DWORD; stdcall;

        TFNBioAPI_Verify           = Function(  hHandle                 : DWORD;
                                                const piStoredTemplate  : NBioAPI_INPUT_FIR_PTR;
                                                pbResult                : Pointer; //Bool*;
                                                pPayload                : NBioAPI_FIR_PAYLOAD_PTR;
                                                nTimeout                : Integer;
                                                phAuditData             : Pointer; //DWORD*
                                                const  pWindowOption    : NBioAPI_WINDOW_OPTION_PTR): DWORD; stdcall;

        TFNBioAPI_GetFIRFromHandle     = Function(hHandle : DWORD; hFIR : DWORD; pFIR : NBioAPI_FIR_PTR):DWORD; stdcall;

        TFNBioAPI_GetHeaderFromHandle  = Function(hHandle, hFIR : DWORD; pHeader : NBioAPI_FIR_HEADER_PTR):DWORD; stdcall;

        TFNBioAPI_FreeTextFIR          = Function(hHandle : DWORD; pTextFIR : NBioAPI_FIR_TEXTENCODE_PTR):DWORD; stdcall;

        TFNBioAPI_GetTextFIRFromHandle = Function(hHandle, hFIR : DWORD; pTextFIR : NBioAPI_FIR_TEXTENCODE_PTR; bIsWide : BOOL):DWORD ; stdcall;

        TFNBioAPI_CheckValidity        = Function(szModulePath : LPCTSTR): DWORD; stdcall;

        TFNBioAPI_SetSkinResource      = Function(szResPath : LPCTSTR): Boolean; stdcall;

        TFNBioAPI_FreePayload          = Function(hHandle : DWORD; pPayload :  NBioAPI_FIR_PAYLOAD_PTR): Bool; stdcall;

        TFNBioAPI_Capture              = Function(hHandle               : DWORD;
                                                  nPurpose              : NBioAPI_FIR_PURPOSE;
                                                  phCapturedFIR         : Pointer; //NBioAPI_FIR_HANDLE_PTR;
                                                  nTimeout              : Integer;
                                                  phAuditData           : Pointer; //NBioAPI_FIR_HANDLE_PTR;
                                                  const pWindowOption   : NBioAPI_WINDOW_OPTION_PTR ):DWORD; stdcall;



implementation

end.
