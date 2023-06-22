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
    
    ' Apply conditional formatting to columns H and L based on equal values
    With rngH.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="0")
        .Interior.Color = RGB(0, 100, 0) ' Dark Green for value 0
    End With
    
    With rngH.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="1")
        .Interior.Color = RGB(144, 238, 144) ' Light Green for value 1
    End With
    
    With rngH.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="2")
        .Interior.Color = RGB(255, 255, 0) ' Yellow for value 2
    End With
    
    With rngH.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="3")
        .Interior.Color = RGB(255, 192, 128) ' Light Orange for value 3
    End With
    
    With rngH.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="4")
        .Interior.Color = RGB(255, 128, 0) ' Dark Orange for value 4
    End With
    
    With rngH.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="5")
        .Interior.Color = RGB(255, 0, 0) ' Red for value 5
    End With
    
    With rngH.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="6")
        .Interior.Color = RGB(139, 0, 0) ' Dark Red for value 6
    End With
    
    With rngL.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="0")
        .Interior.Color = RGB(0, 100, 0) ' Dark Green for value 0
    End With
    
    With rngL.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="1")
        .Interior.Color = RGB(144, 238, 144) ' Light Green for value 1
    End With
    
    With rngL.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="2")
        .Interior.Color = RGB(255, 255, 0) ' Yellow for value 2
    End With
    
    With rngL.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="3")
        .Interior.Color = RGB(255, 192, 128) ' Light Orange for value 3
    End With
    
    With rngL.FormatConditions.Add(Type:=xlCellValue, Operator:=xlEqual, Formula1:="4")
        .Interior.Color = RGB(255, 128, 0) ' Dark Orange for value 4
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
