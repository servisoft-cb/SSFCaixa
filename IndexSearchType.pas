unit IndexSearchType;

interface

uses
        Windows, classes, SysUtils, NBioAPI_Type;
        
const
        NBioAPI_INVALID_HANDLE = 0;

        NBioAPI_FIR_SECURITY_LEVEL_LOWEST        = 1;
        NBioAPI_FIR_SECURITY_LEVEL_LOWER         = 2;
        NBioAPI_FIR_SECURITY_LEVEL_LOW           = 3;
        NBioAPI_FIR_SECURITY_LEVEL_BELOW_NORMAL  = 4;
        NBioAPI_FIR_SECURITY_LEVEL_NORMAL        = 5;
        NBioAPI_FIR_SECURITY_LEVEL_ABOVE_NORMAL  = 6;
        NBioAPI_FIR_SECURITY_LEVEL_HIGH          = 7;
        NBioAPI_FIR_SECURITY_LEVEL_HIGHER        = 8;
        NBioAPI_FIR_SECURITY_LEVEL_HIGHEST       = 9;

        //NBioAPI_FINGER_ID
        NBioAPI_FINGER_ID_UNKNOWN       = 0; //for verify
        NBioAPI_FINGER_ID_RIGHT_THUMB   = 1;
        NBioAPI_FINGER_ID_RIGHT_INDEX   = 2;
        NBioAPI_FINGER_ID_RIGHT_MIDDLE  = 3;
        NBioAPI_FINGER_ID_RIGHT_RING    = 4;
        NBioAPI_FINGER_ID_RIGHT_LITTLE  = 5;
        NBioAPI_FINGER_ID_LEFT_THUMB    = 6;
        NBioAPI_FINGER_ID_LEFT_INDEX    = 7;
        NBioAPI_FINGER_ID_LEFT_MIDDLE   = 8;
        NBioAPI_FINGER_ID_LEFT_RING     = 9;
        NBioAPI_FINGER_ID_LEFT_LITTLE   = 10;
        NBioAPI_FINGER_ID_MAX           = 11;

        //MINCONV_DATA_TYPE for ConvertMinDataToFIRHandle()
        MINCONV_TYPE_FDP        = 0;
        MINCONV_TYPE_FDU        = 1;
        MINCONV_TYPE_FDA        = 2;
        MINCONV_TYPE_OLD_FDA    = 3;
        MINCONV_TYPE_FDAC       = 4;
        MINCONV_TYPE_MAX        = 5;


type
        //NBioAPI_INDEXSEARCH_SAMPLE_INFO
        NBioAPI_INDEXSEARCH_SAMPLE_INFO_PTR = ^NBioAPI_INDEXSEARCH_SAMPLE_INFO;
        NBioAPI_INDEXSEARCH_SAMPLE_INFO = record
                ID              : DWORD;
                SampleCount     : array [0..10] of BYTE;
        end;

        NBioAPI_INDEXSEARCH_INIT_INFO_PTR_0 = ^NBioAPI_INDEXSEARCH_INIT_INFO_0;
        NBioAPI_INDEXSEARCH_INIT_INFO_0 = record
                StructureType      : DWORD;     //must be 0
                MaxCandidateNumber : DWORD;     //Default = 10 : for INDEXSEARCH
                researved0         : DWORD;
                researved1         : DWORD;
                researved2         : DWORD;
                researved3         : DWORD;
                researved4         : DWORD;
                researved5         : DWORD;
                researved6         : Pointer;   //^DWORD;
        end;

        NBioAPI_INIT_INFO_PTR_0 = ^NBioAPI_INIT_INFO_0;
        NBioAPI_INIT_INFO_0 = record
                StructureType           : DWORD;
                MaxFingersForEnroll     : DWORD;
                SamplesPerFinger        : DWORD;
                DefaultTimeout          : DWORD;
                EnrollImageQuality      : DWORD;
                VerifyImageQuality      : DWORD;
                IdentifyImageQuality    : DWORD;
                SecurityLevel           : DWORD;
        end;

        NBioAPI_INDEXSEARCH_FP_INFO_PTR = ^NBioAPI_INDEXSEARCH_FP_INFO;
        NBioAPI_INDEXSEARCH_FP_INFO = record
                ID              : DWORD;
                FingerID        : BYTE;
                SampleNumber    : BYTE;
        end;

        NBioAPI_INDEXSEARCH_CALLBACK_PARAM_PTR_0 = ^NBioAPI_INDEXSEARCH_CALLBACK_PARAM_0;
        NBioAPI_INDEXSEARCH_CALLBACK_PARAM_0 = record
                TotalCount      : DWORD;
                ProgressPos     : DWORD;
                FpInfo          : NBioAPI_INDEXSEARCH_FP_INFO;
                Reserved0       : DWORD;
                Reserved1       : DWORD;
                Reserved2       : DWORD;
                Reserved3       : DWORD;
                Reserved4       : Pointer; //NBioAPI_VOID_PTR
        end;

        //NBioAPI_INDEXSEARCH_CALLBACK 
        NBioAPI_INDEXSEARCH_CALLBACK_0 = Function(pCallbackParam0 : NBioAPI_INDEXSEARCH_CALLBACK_PARAM_PTR_0;
                                                  pUserParam : Pointer): DWORD; stdcall;
        
        NBioAPI_INDEXSEARCH_CALLBACK_INFO_PTR_0 = ^NBioAPI_INDEXSEARCH_CALLBACK_INFO_0;
        NBioAPI_INDEXSEARCH_CALLBACK_INFO_0 = record
                CallBackType      : DWORD;
                CallBackFunction  : NBioAPI_INDEXSEARCH_CALLBACK_0;
                UserCallBackParam : Pointer; //NBioAPI_VOID_PTR
        end;


        TFNBioAPI_InitIndexSearchEngine       = Function(hHandle : DWORD):DWORD; stdcall;
        TFNBioAPI_TerminateIndexSearchEngine  = Function(hHandle : DWORD):DWORD; stdcall;
        TFNBioAPI_ClearIndexSearchDB          = Function(hHandle : DWORD):DWORD; stdcall;

        TFNBioAPI_AddFIRToIndexSearchDB       = Function(hHandle         : DWORD;
                                                        const pInputFIR : NBioAPI_INPUT_FIR_PTR;
                                                        nUserID         : DWORD;
                                                        pSampleInfo     : NBioAPI_INDEXSEARCH_SAMPLE_INFO_PTR):DWORD; stdcall;

        TFNBioAPI_GetIndexSearchInitInfo      = Function(hHandle         : DWORD;
                                                        nStructureType  : BYTE;
                                                        pInitInfo       : Pointer       //NBioAPI_INIT_INFO_PTR
                                                        ):DWORD; stdcall;

        TFNBioAPI_IdentifyDataFromIndexSearchDB = Function(hHandle       : DWORD;
                                                        const pInputFIR : NBioAPI_INPUT_FIR_PTR;
                                                        nSecuLevel      : DWORD;        //NBioAPI_FIR_SECURITY_LEVEL
                                                        pFpInfo         : NBioAPI_INDEXSEARCH_FP_INFO_PTR;
                                                        pCallbackInfo0  : NBioAPI_INDEXSEARCH_CALLBACK_INFO_PTR_0):DWORD; stdcall;

        TFNBioAPI_RemoveDataFromIndexSearchDB = Function(hHandle         : DWORD;
                                                        pFpInfo         : NBioAPI_INDEXSEARCH_FP_INFO_PTR
                                                        ):DWORD; stdcall;

        TFNBioAPI_SaveIndexSearchDBToFile     = Function(hHandle         : DWORD;
                                                        const szFilepath: PChar         //char*
                                                        ):DWORD; stdcall;

        TFNBioAPI_LoadIndexSearchDBFromFile   = Function(hHandle         : DWORD;
                                                        const szFilepath: PChar         //char*
                                                        ):DWORD; stdcall;

        TFNBioAPI_GetDataCountFromIndexSearchDB = Function(hHandle      : DWORD;
                                                        pDataCount      : Pointer       //dword*
                                                        ):DWORD; stdcall;

        //Import Functions
        TFNBioAPI_ImportDataToNBioBSP = Function(hHandle        : DWORD;
                                                 pExportData    : NBioAPI_EXPORT_DATA_PTR;
                                                 Purpose        : NBioAPI_FIR_PURPOSE;
                                                 phProcessedFIR : Pointer               //NBioAPI_FIR_HANDLE_PTR
                                                 ):DWORD; stdcall;

        
implementation

end.
