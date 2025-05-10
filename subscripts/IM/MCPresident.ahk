RegisterCEO() {
	DllCall("keybd_event", "UInt", 0x4D, "UInt", 0x32, "UInt", 0,           "UInt", 0)
	Sleep(50)
	DllCall("keybd_event", "UInt", 0x4D, "UInt", 0x32, "UInt", 2,           "UInt", 0)
	Sleep(100)
	
	
	DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  0, "UInt", 0) ; ENTER down
	Sleep(50)
	DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt",  2, "UInt", 0) ; ENTER up
	Sleep(50)

}