LeaveSecuroServe() {
	DllCall("keybd_event", "UInt", 0x4D, "UInt", 0x32, "UInt", 0,           "UInt", 0) ; M down
	Sleep(50)
	DllCall("keybd_event", "UInt", 0x4D, "UInt", 0x32, "UInt", 2,           "UInt", 0) ; M up
	Sleep(500)
	
	DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  0, "UInt", 0) ; ENTER down
	Sleep(50)
	DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  2, "UInt", 0) ; ENTER up
	Sleep(50)
	
	DllCall("keybd_event", "UInt", 0x28, "UInt", 0x50, "UInt", 0x0001,          "UInt", 0) ; DOWN down
	Sleep(50)
	DllCall("keybd_event", "UInt", 0x28, "UInt", 0x50, "UInt", 0x0001|0x0002,   "UInt", 0) ; DOWN up
	Sleep(50)
	
	DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  0, "UInt", 0) ; ENTER down
	Sleep(50)
	DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  2, "UInt", 0) ; ENTER up
}
