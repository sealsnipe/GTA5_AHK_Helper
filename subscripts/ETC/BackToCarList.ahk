BackToCarList() {
	DllCall("keybd_event", "UInt", 0x26, "UInt", 0x48, "UInt", 0x0001,          "UInt", 0) ; UP down
	Sleep(50)
	DllCall("keybd_event", "UInt", 0x26, "UInt", 0x48, "UInt", 0x0001|0x0002,   "UInt", 0) ; UP up
	Sleep(100)
	
	DllCall("keybd_event", "UInt", 0x26, "UInt", 0x48, "UInt", 0x0001,          "UInt", 0) ; UP down
	Sleep(50)
	DllCall("keybd_event", "UInt", 0x26, "UInt", 0x48, "UInt", 0x0001|0x0002,   "UInt", 0) ; UP up
	Sleep(100)
	
	DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  0, "UInt", 0) ; ENTER down
	Sleep(50)
	DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  2, "UInt", 0) ; ENTER up
	Sleep(150)
	
	Loop 3 {
		DllCall("keybd_event", "UInt", 0x1B, "UInt", 0x01, "UInt",  0, "UInt", 0) ; ESC down
		Sleep(50)
		DllCall("keybd_event", "UInt", 0x1B, "UInt", 0x01, "UInt",  2, "UInt", 0) ; ESC up
		Sleep(100)

	}
}