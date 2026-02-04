object Data_Module: TData_Module
  OldCreateOrder = False
  Height = 394
  Width = 669
  object fdConexao: TFDConnection
    Params.Strings = (
      'Database=cartao'
      'User_Name=root'
      'Server=localhost'
      'Port=3308'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 160
    Top = 96
  end
  object fdqAluno: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      'select * from aluno')
    Left = 272
    Top = 104
  end
  object fdtAluno: TFDTable
    IndexFieldNames = 'codigo'
    Connection = fdConexao
    UpdateOptions.UpdateTableName = 'cartao.aluno'
    TableName = 'cartao.aluno'
    Left = 344
    Top = 112
    object fdtAlunonome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object fdtAlunocartao: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'cartao'
      Origin = 'cartao'
      BlobType = ftMemo
    end
    object fdtAlunofotos: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'fotos'
      Origin = 'fotos'
    end
    object fdtAlunocodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ReadOnly = True
    end
    object fdtAlunoautorizadocedo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'autorizadocedo'
      Origin = 'autorizadocedo'
      FixedChar = True
      Size = 1
    end
    object fdtAlunoRM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RM'
      Origin = 'RM'
      FixedChar = True
      Size = 5
    end
    object fdtAlunoautorizado13hrs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'autorizado13hrs'
      Origin = 'autorizado13hrs'
      FixedChar = True
      Size = 1
    end
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 328
    Top = 192
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 448
    Top = 192
  end
end
