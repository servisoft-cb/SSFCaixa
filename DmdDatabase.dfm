object dmDatabase: TdmDatabase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 403
  Top = 222
  Height = 225
  Width = 242
  object scoDados: TSQLConnection
    ConnectionName = 'SSFCaixa'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=LOCALHOST:c:\Delphi7\SSFCaixa\SSFCAIXA.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 32
    Top = 16
  end
  object Decoder64: TIdDecoderMIME
    FillChar = '='
    Left = 96
    Top = 16
  end
  object sdsExec: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = scoDados
    Left = 32
    Top = 72
  end
end
