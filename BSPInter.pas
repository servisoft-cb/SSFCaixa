unit BSPInter;

interface

uses
  Windows, Dialogs, ShellAPI, classes, Sysutils, NBioAPI_Type;


var
  //'NBioBSP.dll'
  g_hwnd       : THandle;
  //'NBioAPI_Init'
  g_hBSP       : THandle;
  //MBioBSP Version Infomation
  g_bsp_ver    : NBioAPI_VERSION;

  //device
  g_aDevice_list : PChar;

var
        NBioAPI_CheckValidity_Func        : TFNBioAPI_CheckValidity;
        NBioAPI_GetVersion_Func           : TFNBioAPI_GetVersion;
        NBioAPI_GetInitInfo_Func          : TFNBioAPI_GetInitInfo;
        NBioAPI_CloseDevice_Func          : TFNBioAPI_CloseDevice;
        NBioAPI_OpenDevice_Func           : TFNBioAPI_OpenDevice;
        NBioAPI_FreeFIR_Func              : TFNBioAPI_FreeFIR;
        NBioAPI_EnumerateDevice_Func      : TFNBioAPI_EnumerateDevice;
        NBioAPI_FreeFIRHandle_Func        : TFNBioAPI_FreeFIRHandle;
        NBioAPI_Enroll_Func               : TFNBioAPI_Enroll;
        NBioAPI_SetInitInfo_Func          : TFNBioAPI_SetInitInfo;
        NBioAPI_Init_Func                 : TFNBioAPI_Init;
        NBioAPI_Terminate_Func            : TFNBioAPI_Terminate;
        NBioAPI_GetFIRFromHandle_Func     : TFNBioAPI_GetFIRFromHandle;
        NBioAPI_GetHeaderFromHandle_Func  : TFNBioAPI_GetHeaderFromHandle;
        NBioAPI_Verify_Func               : TFNBioAPI_Verify;
        NBioAPI_FreeTextFIR_Func          : TFNBioAPI_FreeTextFIR;
        NBioAPI_GetTextFIRFromHandle_Func : TFNBioAPI_GetTextFIRFromHandle;
        NBioAPI_SetSkinResource_Func      : TFNBioAPI_SetSkinResource;
        NBioAPI_FreePayload_Func          : TFNBioAPI_FreePayload;
        NBioAPI_Capture_Func              : TFNBioAPI_Capture;


//GetProcAddress
Function LoadNBioBSPFunctions : DWORD;

//Check Dll - vaild/unvild
Function IsValidModule : DWORD;
//Get Dll Version
Function GetBSPVersion : DWORD;
//Get BSP Infomations
Function GetBSPInfo(ptr_init_info0 : NBioAPI_INIT_INFO_PTR_0) : DWORD;
Function CloseDevice(deviceID : WORD): DWORD;
Function OpenDevice(deviceID : WORD): DWORD;
Function FreeFIR(pFIR : NBioAPI_FIR_PTR) : DWORD;
Function FreeFIRHandle(hFIR : DWORD): LongInt;
Function EunmerateDevice(num : Pointer) : DWORD;
Function Enroll(phFIR : Pointer; payload : NBioAPI_FIR_PAYLOAD_PTR; time_out : Integer; pWinOption: NBioAPI_WINDOW_OPTION_PTR): DWORD;
Function GetFullFIR(hFIR : DWORD; pFullFIR : NBioAPI_FIR_PTR): DWORD;
Function GetFirLength(hFIR : DWORD): LongInt;
Function Verify(pinputFIR : NBioAPI_INPUT_FIR; bValue : Pointer; ppayload : NBioAPI_FIR_PAYLOAD_PTR; time_out : Integer; pWinOption: NBioAPI_WINDOW_OPTION_PTR): DWORD;
Function SetBSPInfo(ptr_init_info0 : NBioAPI_INIT_INFO_PTR_0): DWORD;
Function InitNBioAPI: DWORD;
Function TerminateNBioAPI: DWORD;
Function FreeTextFIR(pTextFIR : NBioAPI_FIR_TEXTENCODE_PTR): DWORD;
Function GetTextFIR(hFIR : DWORD; pTextFIR : NBioAPI_FIR_TEXTENCODE_PTR): DWORD;
Function SetSkinResource(szResPath : LPCTSTR):Bool;
Function FreePayload(payload : NBioAPI_FIR_PAYLOAD_PTR): Bool;
Function Capture(phFIR : Pointer; payload : NBioAPI_FIR_PAYLOAD_PTR; nPurpose : NBioAPI_FIR_PURPOSE; time_out : Integer; pWinOption: NBioAPI_WINDOW_OPTION_PTR):DWORD;


implementation

Function LoadNBioBSPFunctions : DWORD;
begin
        result := 0;
        
        if g_hwnd >= 32 then
        begin
                @NBioAPI_CheckValidity_Func             := GetProcAddress(g_hwnd, 'NBioAPI_CheckValidity');
                @NBioAPI_GetVersion_Func                := GetProcAddress(g_hwnd, 'NBioAPI_GetVersion');
                @NBioAPI_GetInitInfo_Func               := GetProcAddress(g_hwnd, 'NBioAPI_GetInitInfo');
                @NBioAPI_CloseDevice_Func               := GetProcAddress(g_hwnd, 'NBioAPI_CloseDevice');
                @NBioAPI_OpenDevice_Func                := GetProcAddress(g_hwnd, 'NBioAPI_OpenDevice');
                @NBioAPI_FreeFIR_Func                   := GetProcAddress(g_hwnd, 'NBioAPI_FreeFIR');
                @NBioAPI_EnumerateDevice_Func           := GetProcAddress(g_hwnd, 'NBioAPI_EnumerateDevice');
                @NBioAPI_FreeFIRHandle_Func             := GetProcAddress(g_hwnd, 'NBioAPI_FreeFIRHandle');
                @NBioAPI_Enroll_Func                    := GetProcAddress(g_hwnd, 'NBioAPI_Enroll');
                @NBioAPI_SetInitInfo_Func               := GetProcAddress(g_hwnd, 'NBioAPI_SetInitInfo');
                @NBioAPI_Init_Func                      := GetProcAddress(g_hwnd, 'NBioAPI_Init');
                @NBioAPI_Terminate_Func                 := GetProcAddress(g_hwnd, 'NBioAPI_Terminate');
                @NBioAPI_GetFIRFromHandle_Func          := GetProcAddress(g_hwnd, 'NBioAPI_GetFIRFromHandle');
                @NBioAPI_GetHeaderFromHandle_Func       := GetProcAddress(g_hwnd, 'NBioAPI_GetHeaderFromHandle');
                @NBioAPI_Verify_Func                    := GetProcAddress(g_hwnd, 'NBioAPI_Verify');
                @NBioAPI_FreeTextFIR_Func               := GetProcAddress(g_hwnd, 'NBioAPI_FreeTextFIR');
                @NBioAPI_GetTextFIRFromHandle_Func      := GetProcAddress(g_hwnd, 'NBioAPI_GetTextFIRFromHandle');
                @NBioAPI_SetSkinResource_Func           := GetProcAddress(g_hwnd, 'NBioAPI_SetSkinResource');
                @NBioAPI_FreePayload_Func               := GetProcAddress(g_hwnd, 'NBioAPI_FreePayload');
                @NBioAPI_Capture_Func                   := GetProcAddress(g_hwnd, 'NBioAPI_Capture');
        end;
end;

//Check if module is valid or not.
//if module is not valid, it can be tampered from someone.
Function IsValidModule : DWORD;
begin
        if not (@NBioAPI_CheckValidity_Func = nil) then
                result := NBioAPI_CheckValidity_Func('NBioBSP.DLL')
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

//Get Dll Version
Function GetBSPVersion : DWORD;
begin
        if not (@NBioAPI_GetVersion_Func = nil) then
                result := NBioAPI_GetVersion_Func(g_hBSP, @g_bsp_ver)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function GetBSPInfo(ptr_init_info0 : NBioAPI_INIT_INFO_PTR_0): DWORD;
begin
        if not (@NBioAPI_GetInitInfo_Func = nil) then
                result := NBioAPI_GetInitInfo_Func(g_hBSP, 0, ptr_init_info0)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function CloseDevice(deviceID : WORD): DWORD;
begin
        if not (@NBioAPI_CloseDevice_Func = nil) then
                result := NBioAPI_CloseDevice_Func(g_hBSP, deviceID)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function OpenDevice(deviceID : WORD): DWORD;
begin
        if not (@NBioAPI_OpenDevice_Func = nil) then
                result := NBioAPI_OpenDevice_Func(g_hBSP, deviceID)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function FreeFIR(pFIR : NBioAPI_FIR_PTR) : DWORD;
begin
        if not (@NBioAPI_FreeFIR_Func = nil) then
                result := NBioAPI_FreeFIR_Func(g_hBSP, pFIR)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

//Get Kinds of Device
Function EunmerateDevice(num: Pointer) : DWORD;
begin
        if not (@NBioAPI_EnumerateDevice_Func = nil) then
                result := NBioAPI_EnumerateDevice_Func(g_hBSP, num, @g_aDevice_list)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function FreeFIRHandle(hFIR : DWORD): longInt;
begin
        if not (@NBioAPI_FreeFIRHandle_Func = nil) then
                result := NBioAPI_FreeFIRHandle_Func(g_hBSP, hFIR)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function Enroll(phFIR : Pointer; payload : NBioAPI_FIR_PAYLOAD_PTR; time_out : Integer; pWinOption: NBioAPI_WINDOW_OPTION_PTR): DWORD;
begin
        if (time_out <= 0) then
                time_out := -1; //default 10000ms
        
        if not (@NBioAPI_Enroll_Func = nil) then
                result := NBioAPI_Enroll_Func(g_hBSP, nil, phFIR, payload, time_out, nil, pWinOption)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

//'Set Button' Clicked
Function SetBSPInfo(ptr_init_info0 : NBioAPI_INIT_INFO_PTR_0): DWORD;
begin
        if not (@NBioAPI_SetInitInfo_Func = nil) then
                result := NBioAPI_SetInitInfo_Func(g_hBSP, 0, ptr_init_info0)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function InitNBioAPI: DWORD;
begin
        if not (@NBioAPI_Init_Func = nil) then
                result := NBioAPI_Init_Func(@g_hBSP)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function TerminateNBioAPI: DWORD;
begin
        if not (@NBioAPI_Terminate_Func = nil) then
                result := NBioAPI_Terminate_Func(g_hBSP)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

//Get FIR From FIR Handle
Function GetFullFIR(hFIR : DWORD; pFullFIR : NBioAPI_FIR_PTR): DWORD;
begin
        if not (@NBioAPI_GetFIRFromHandle_Func = nil) then
                result := NBioAPI_GetFIRFromHandle_Func(g_hBSP, hFIR, pFullFIR)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function GetFirLength(hFIR : DWORD): LongInt;
var
        Header : NBioAPI_FIR_HEADER;
        dwLength : DWORD;
begin
        if not (@NBioAPI_GetHeaderFromHandle_Func = nil) then
        begin
                NBioAPI_GetHeaderFromHandle_Func(g_hBSP, hFIR, @header);

                dwLength := Header.DataLength + Header.Length + sizeof(DWORD);
                result   := dwLength;
        end else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

//***********************************************************************
// Function Name - Verity
//***********************************************************************
// Input         - inputFIR : input FIR
// Output        - bValue   : verfication result, TRUE or FALSE
//               - payload  : payload if payload is embedded in input FIR
//***********************************************************************
Function Verify(pinputFIR : NBioAPI_INPUT_FIR; bValue : Pointer; ppayload : NBioAPI_FIR_PAYLOAD_PTR; time_out : Integer; pWinOption: NBioAPI_WINDOW_OPTION_PTR): DWORD;
var
        paudit_data : Pointer;  //NBioAPI_FIR_HANDLE_PTR;
begin
        if (time_out <= 0) then
                time_out := -1; //default time : 10000ms

        paudit_data := nil;

        if not (@NBioAPI_Verify_Func = nil) then
                result := NBioAPI_Verify_Func(g_hBSP, @pinputFIR, bValue, ppayload, time_out, paudit_data, pWinOption)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function FreeTextFIR(pTextFIR : NBioAPI_FIR_TEXTENCODE_PTR): DWORD;
begin
        if not (@NBioAPI_FreeTextFIR_Func = nil) then
                result := NBioAPI_FreeTextFIR_Func(g_hBSP, pTextFIR)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function GetTextFIR(hFIR : DWORD; pTextFIR : NBioAPI_FIR_TEXTENCODE_PTR): DWORD;
begin
        if (hFIR <> 0) and (g_hBSP <> 0) then
        begin
                if not (@NBioAPI_GetTextFIRFromHandle_Func = nil) then
                        result := NBioAPI_GetTextFIRFromHandle_Func(g_hBSP, hFIR, pTextFIR, False)
                else
                        result := NBioAPIERROR_INVALID_HANDLE;
        end else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function SetSkinResource(szResPath : LPCTSTR):Bool;
begin
        if not (@NBioAPI_SetSkinResource_Func = nil) then
                result := NBioAPI_SetSkinResource_Func(szResPath)
        else
                result := False;
end;

Function FreePayload(payload : NBioAPI_FIR_PAYLOAD_PTR): Bool;
begin
        if not (@NBioAPI_FreePayload_Func = nil) then
                result := NBioAPI_FreePayload_Func(g_hBSP, payload)
        else
                result := False;
end;

Function Capture(phFIR : Pointer; payload : NBioAPI_FIR_PAYLOAD_PTR; nPurpose : NBioAPI_FIR_PURPOSE; time_out : Integer; pWinOption: NBioAPI_WINDOW_OPTION_PTR):DWORD;
var
        paudit_data          : ^DWORD;
begin
        if (time_out <= 0) then
                time_out := -1; //default 10000ms

        paudit_data := nil;

        if not (@NBioAPI_Capture_Func = nil) then
                result := NBioAPI_Capture_Func(g_hBSP, nPurpose, phFIR, time_out, paudit_data, pWinOption)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

end.
