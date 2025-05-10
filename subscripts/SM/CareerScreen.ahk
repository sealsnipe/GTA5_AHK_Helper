CareerScreen() {
	Sleep(500)
    DllCall("keybd_event", "UInt", 0x1B, "UInt", 0x01, "UInt", 0,           "UInt", 0)
    Sleep(50)
    DllCall("keybd_event", "UInt", 0x1B, "UInt", 0x01, "UInt", 2,           "UInt", 0)
    Sleep(200)  
	
    DllCall("keybd_event", "UInt", 0x45, "UInt", 0x12, "UInt", 0,           "UInt", 0)
    Sleep(50)
    DllCall("keybd_event", "UInt", 0x45, "UInt", 0x12, "UInt", 2,           "UInt", 0)
    Sleep(100) 

    DllCall("keybd_event", "UInt", 0x45, "UInt", 0x12, "UInt", 0,           "UInt", 0)
    Sleep(50)
    DllCall("keybd_event", "UInt", 0x45, "UInt", 0x12, "UInt", 2,           "UInt", 0)
    Sleep(500)  

    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 0,           "UInt", 0)
    Sleep(50)
    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 2,           "UInt", 0)

}