JoinCrew() {

	DllCall("keybd_event", "UInt", 0x1B, "UInt", 0x01, "UInt",  0, "UInt", 0) ; ESC down
	Sleep(50)
	DllCall("keybd_event", "UInt", 0x1B, "UInt", 0x01, "UInt",  2, "UInt", 0) ; ESC up
    Sleep(500)  

    DllCall("keybd_event", "UInt", 0x45, "UInt", 0x12, "UInt", 0,           "UInt", 0)
    Sleep(50)
    DllCall("keybd_event", "UInt", 0x45, "UInt", 0x12, "UInt", 2,           "UInt", 0)
    Sleep(500)  
	
	DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  0, "UInt", 0) ; ENTER down
	Sleep(50)
	DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  2, "UInt", 0) ; ENTER up
	Sleep(200)
	
	

    Loop 2 {
		DllCall("keybd_event", "UInt", 0x28, "UInt", 0x50, "UInt", 0x0001,          "UInt", 0) ; DOWN down
		Sleep(50)
		DllCall("keybd_event", "UInt", 0x28, "UInt", 0x50, "UInt", 0x0001|0x0002,   "UInt", 0) ; DOWN up
		Sleep(50)
    }

    Loop 15 {
		DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  0, "UInt", 0) ; ENTER down
		Sleep(50)
		DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  2, "UInt", 0) ; ENTER up
		Sleep(200)
    }
}