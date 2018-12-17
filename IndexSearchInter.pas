unit IndexSearchInter;

interface

uses Windows, Dialogs, IndexSearchType, NBioAPI_Type, BSPInter;


var
        NBioAPI_InitIndexSearchEngine_Func              : TFNBioAPI_InitIndexSearchEngine;
        NBioAPI_TerminateIndexSearchEngine_Func         : TFNBioAPI_TerminateIndexSearchEngine;
        NBioAPI_ClearIndexSearchDB_Func                 : TFNBioAPI_ClearIndexSearchDB;
        NBioAPI_AddFIRToIndexSearchDB_Func              : TFNBioAPI_AddFIRToIndexSearchDB;
        NBioAPI_IdentifyDataFromIndexSearchDB_Func      : TFNBioAPI_IdentifyDataFromIndexSearchDB;
        NBioAPI_RemoveDataFromIndexSearchDB_Func        : TFNBioAPI_RemoveDataFromIndexSearchDB;
        NBioAPI_SaveIndexSearchDBToFile_Func            : TFNBioAPI_SaveIndexSearchDBToFile;
        NBioAPI_LoadIndexSearchDBFromFile_Func          : TFNBioAPI_LoadIndexSearchDBFromFile;
        NBioAPI_GetDataCountFromIndexSearchDB_Func      : TFNBioAPI_GetDataCountFromIndexSearchDB;
        NBioAPI_ImportDataToNBioBSP_Func                : TFNBioAPI_ImportDataToNBioBSP;


//GetProcAddress
Function LoadIndexSearchFunctions : DWORD;

Function InitIndexSearchEngine : DWORD;
Function TerminateIndexSearchEngin : DWORD;
Function ClearIndexSearchDB : DWORD;
Function AddFIRToIndexSearchDB(phFIR : NBioAPI_INPUT_FIR_PTR; nUserID : DWORD; pInfoSample : NBioAPI_INDEXSEARCH_SAMPLE_INFO_PTR): DWORD;
Function IdentifyDataFromIndexSearchDB(pInputFIR : NBioAPI_INPUT_FIR_PTR; nSecuLevel : DWORD; pFpInfo : NBioAPI_INDEXSEARCH_FP_INFO_PTR; pCallbackInfo0 : NBioAPI_INDEXSEARCH_CALLBACK_INFO_PTR_0): DWORD;
Function RemoveDataFromIndexSearchDB(pFpInfo : NBioAPI_INDEXSEARCH_FP_INFO_PTR): DWORD;
Function SaveIndexSearchDBToFile(szFilepath : PChar): DWORD;
Function LoadIndexSearchDBFromFile(szFilepath : PChar): DWORD;
Function GetDataCountFromIndexSearchDB(pCount : Pointer): DWORD;
Function ImportDataToNBioBSP(pExportData : NBioAPI_EXPORT_DATA_PTR; Purpose : NBioAPI_FIR_PURPOSE; phProcessedFIR : Pointer): DWORD;


implementation

Function LoadIndexSearchFunctions : DWORD;
begin
        result := 0;

        if g_hwnd >= 32 then
        begin
                @NBioAPI_InitIndexSearchEngine_Func             := GetProcAddress(g_hwnd, 'NBioAPI_InitIndexSearchEngine');
                @NBioAPI_TerminateIndexSearchEngine_Func        := GetProcAddress(g_hwnd, 'NBioAPI_TerminateIndexSearchEngine');
                @NBioAPI_ClearIndexSearchDB_Func                := GetProcAddress(g_hwnd, 'NBioAPI_ClearIndexSearchDB');
                @NBioAPI_AddFIRToIndexSearchDB_Func             := GetProcAddress(g_hwnd, 'NBioAPI_AddFIRToIndexSearchDB');
                @NBioAPI_IdentifyDataFromIndexSearchDB_Func     := GetProcAddress(g_hwnd, 'NBioAPI_IdentifyDataFromIndexSearchDB');
                @NBioAPI_RemoveDataFromIndexSearchDB_Func       := GetProcAddress(g_hwnd, 'NBioAPI_RemoveDataFromIndexSearchDB');
                @NBioAPI_SaveIndexSearchDBToFile_Func           := GetProcAddress(g_hwnd, 'NBioAPI_SaveIndexSearchDBToFile');
                @NBioAPI_LoadIndexSearchDBFromFile_Func         := GetProcAddress(g_hwnd, 'NBioAPI_LoadIndexSearchDBFromFile');
                @NBioAPI_GetDataCountFromIndexSearchDB_Func     := GetProcAddress(g_hwnd, 'NBioAPI_GetDataCountFromIndexSearchDB');
                @NBioAPI_ImportDataToNBioBSP_Func               := GetProcAddress(g_hwnd, 'NBioAPI_ImportDataToNBioBSP');
        end;
end;

Function InitIndexSearchEngine : DWORD;
begin
        if not (@NBioAPI_InitIndexSearchEngine_Func = nil) then
                InitIndexSearchEngine := NBioAPI_InitIndexSearchEngine_Func(g_hBSP)
        else
                InitIndexSearchEngine := NBioAPIERROR_INVALID_HANDLE;
end;

Function TerminateIndexSearchEngin : DWORD;
begin
        if not (@NBioAPI_TerminateIndexSearchEngine_Func = nil) then
                result := NBioAPI_TerminateIndexSearchEngine_Func(g_hBSP)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function ClearIndexSearchDB : DWORD;
begin
        if not (@NBioAPI_ClearIndexSearchDB_Func = nil) then
                result := NBioAPI_ClearIndexSearchDB_Func(g_hBSP)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function AddFIRToIndexSearchDB(phFIR : NBioAPI_INPUT_FIR_PTR; nUserID : DWORD; pInfoSample : NBioAPI_INDEXSEARCH_SAMPLE_INFO_PTR): DWORD;
begin
        if not (@NBioAPI_AddFIRToIndexSearchDB_Func = nil) then
                result := NBioAPI_AddFIRToIndexSearchDB_Func(g_hBSP, phFIR, nUserID, pInfoSample)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function IdentifyDataFromIndexSearchDB(pInputFIR : NBioAPI_INPUT_FIR_PTR; nSecuLevel : DWORD; pFpInfo : NBioAPI_INDEXSEARCH_FP_INFO_PTR; pCallbackInfo0 : NBioAPI_INDEXSEARCH_CALLBACK_INFO_PTR_0): DWORD;
begin
        if not (@NBioAPI_IdentifyDataFromIndexSearchDB_Func = nil) then
                result := NBioAPI_IdentifyDataFromIndexSearchDB_Func(g_hBSP, pInputFIR, nSecuLevel, pFpInfo, pCallbackInfo0)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function RemoveDataFromIndexSearchDB(pFpInfo : NBioAPI_INDEXSEARCH_FP_INFO_PTR): DWORD;
begin
        if not (@NBioAPI_RemoveDataFromIndexSearchDB_Func = nil) then
                result := NBioAPI_RemoveDataFromIndexSearchDB_Func(g_hBSP, pFpInfo)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function SaveIndexSearchDBToFile(szFilepath : PChar): DWORD;
begin
        if not (@NBioAPI_SaveIndexSearchDBToFile_Func = nil) then
                result := NBioAPI_SaveIndexSearchDBToFile_Func(g_hBSP, szFilepath)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function LoadIndexSearchDBFromFile(szFilepath : PChar): DWORD;
begin
        if not (@NBioAPI_LoadIndexSearchDBFromFile_Func = nil) then
                result := NBioAPI_LoadIndexSearchDBFromFile_Func(g_hBSP, szFilepath)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function GetDataCountFromIndexSearchDB(pCount : Pointer): DWORD;
begin
        if not (@NBioAPI_GetDataCountFromIndexSearchDB_Func = nil) then
                result := NBioAPI_GetDataCountFromIndexSearchDB_Func(g_hBSP, pCount)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

Function ImportDataToNBioBSP(pExportData : NBioAPI_EXPORT_DATA_PTR; Purpose : NBioAPI_FIR_PURPOSE; phProcessedFIR : Pointer): DWORD;
begin
        if not (@NBioAPI_ImportDataToNBioBSP_Func = nil) then
                result := NBioAPI_ImportDataToNBioBSP_Func(g_hBSP, pExportData, Purpose, phProcessedFIR)
        else
                result := NBioAPIERROR_INVALID_HANDLE;
end;

end.
