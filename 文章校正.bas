Attribute VB_Name = "NewMacros"
Sub ���͍Z��()
' 2013/03/10
    �S�p���甼�p�֕ϊ� ("[�O-�X�`-�y��-��]{1,}")
    �֎~�������m ("[" & Chr(&H8740) & "-" & Chr(&H889F) & "]{1,}")
End Sub

Private Sub �S�p���甼�p�֕ϊ�(ByVal strPattern As String)
' 2013/03/10
    Selection.Find.ClearFormatting
    With Selection.Find
        .Text = strPattern
        .Replacement.Text = ""
        .Forward = True
        .Wrap = wdFindContinue
        .MatchFuzzy = False
        .MatchWildcards = True
    End With
    Do While Selection.Find.Execute
        Selection.Text = StrConv(Selection.Text, vbNarrow)
        Selection.Collapse wdCollapseEnd
    Loop
End Sub
    
Private Sub �֎~�������m(ByVal strPattern As String)
' 2013/03/10
    Selection.Find.ClearFormatting
    With Selection.Find
        .Text = strPattern
        .Replacement.Text = ""
        .Forward = True
        .Wrap = wdFindContinue
        .MatchFuzzy = False
        .MatchWildcards = True
    End With
    If Selection.Find.Execute() = True Then
        MsgBox "�֎~�������܂܂�Ă��܂�"
    End If
End Sub

