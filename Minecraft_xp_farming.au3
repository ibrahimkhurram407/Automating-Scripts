Global $isFocused = False

While 1
    ; Set focus on Minecraft window once and close pause menu
    If Not $isFocused Then
        WinActivate("Minecraft")	
        Send("{ESC}")
        $isFocused = True
    EndIf

    ; Hit for 20 seconds, cooldown for 1.5 minutes
    If Mod(@Sec, 100) < 20 Then
        ; Send left click command
        MouseClick("left")
    ElseIf Mod(@Sec, 100) >= 20 And Mod(@Sec, 100) < 40 Then
        ; Hold right click for 2.5 seconds
        MouseDown("right")
        Sleep(2500)
        MouseUp("right")
    EndIf

    ; Right click cooldown every 20 minutes
    If Mod(@Min, 20) = 0 Then
        ; Release right click (if still held) and wait for 1.5 minutes
        MouseUp("right")
        Sleep(90000)
    EndIf

    Sleep(1000) ; Wait for 1 second
WEnd
