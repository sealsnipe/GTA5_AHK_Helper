PassiveMode() {
    ; M (0x4D) drücken
    DllCall("keybd_event", "UInt", 0x4D, "UInt", 0x32, "UInt", 0, "UInt", 0)
    Sleep 50
    DllCall("keybd_event", "UInt", 0x4D, "UInt", 0x32, "UInt", 2, "UInt", 0)
    Sleep 100
    
    ; Pfeil ↑
    DllCall("keybd_event", "UInt", 0x26, "UInt", 0x48, "UInt", 1, "UInt", 0) ; down
    Sleep 50
    DllCall("keybd_event", "UInt", 0x26, "UInt", 0x48, "UInt", 3, "UInt", 0) ; up
    Sleep 50
    
    ; ENTER
    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 0, "UInt", 0) ; down
    Sleep 50
    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 2, "UInt", 0) ; up
}