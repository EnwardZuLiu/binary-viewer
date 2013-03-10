Attribute VB_Name = "NewMacros"
Sub 文章校正()
' 2013/03/10
    全角から半角へ変換 ("[０-９Ａ-Ｚａ-ｚ]{1,}")
    禁止文字検知 ("[" & Chr(&H8740) & "-" & Chr(&H889F) & "]{1,}")
End Sub

Private Sub 全角から半角へ変換(ByVal strPattern As String)
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
    
Private Sub 禁止文字検知(ByVal strPattern As String)
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
        MsgBox "禁止文字が含まれています"
    End If
End Sub

