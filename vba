Sub ApplyConditionalFormatting()
    Dim ws As Worksheet
    Dim rngH As Range, rngL As Range, rngF As Range
    Dim cell As Range
    
    ' Set the worksheet to the active sheet or specify the sheet name
    Set ws = ActiveSheet
    
    ' Define the ranges for columns H, L, and F
    Set rngH = ws.Range("H:H")
    Set rngL = ws.Range("L:L")
    Set rngF = ws.Range("F:F")
    
    ' Clear any existing conditional formatting rules
    rngH.FormatConditions.Delete
    rngL.FormatConditions.Delete
    
    ' Apply conditional formatting to columns H and L
    With rngH.FormatConditions.Add(Type:=xlCellValue, Operator:=xlBetween, Formula1:="0", Formula2:="6")
        .Interior.Color = RGB(255, 0, 0) ' Red color for values between 0 and 6
    End With
    
    With rngL.FormatConditions.Add(Type:=xlCellValue, Operator:=xlBetween, Formula1:="0", Formula2:="6")
        .Interior.Color = RGB(0, 0, 255) ' Blue color for values between 0 and 6
    End With
    
    ' Format columns H and L to category custom with type ';;;'
    rngH.NumberFormat = ";;;"
    rngL.NumberFormat = ";;;"
    
    ' Replace values in column F ending with ".00" with a blank space
    For Each cell In rngF
        If cell.Value Like "*.00" Then
            cell.Value = ""
        End If
    Next cell
    
    ' Clear the selection
    ws.Range("A1").Select
End Sub
