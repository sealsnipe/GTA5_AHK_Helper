PrivateCrewSession() {
    DllCall("keybd_event", "UInt", 0x1B, "UInt", 0x01, "UInt", 0,           "UInt", 0)
    Sleep(50)
    DllCall("keybd_event", "UInt", 0x1B, "UInt", 0x01, "UInt", 2,           "UInt", 0)
    Sleep(200)  


    DllCall("keybd_event", "UInt", 0x45, "UInt", 0x12, "UInt", 0,           "UInt", 0)
    Sleep(50)
    DllCall("keybd_event", "UInt", 0x45, "UInt", 0x12, "UInt", 2,           "UInt", 0)
    Sleep(400)  

    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 0,           "UInt", 0)
    Sleep(50)
    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 2,           "UInt", 0)
    Sleep(200)

    ; 4) 13× Down per keybd_event, je 50 ms halten + 25 ms Pause
    Loop 13 {
        DllCall("keybd_event"
             , "UInt", 0x28        
             , "UInt", 0x50        
             , "UInt", 0x0001      
             , "UInt", 0
        )
        Sleep(50)  ; Taste halten
        DllCall("keybd_event"
             , "UInt", 0x28
             , "UInt", 0x50
             , "UInt", 0x0001|0x0002 
             , "UInt", 0
        )
        Sleep(25)  
    }
	Sleep(100)

    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 0,           "UInt", 0)
    Sleep(50)
    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 2,           "UInt", 0)
	Sleep(200)
	
    Loop 3 {
        DllCall("keybd_event"
             , "UInt", 0x28
             , "UInt", 0x50
             , "UInt", 0x0001
             , "UInt", 0
        )
        Sleep(50)
        DllCall("keybd_event"
             , "UInt", 0x28
             , "UInt", 0x50
             , "UInt", 0x0001|0x0002
             , "UInt", 0
        )
        Sleep(25)
    }
	Sleep(100)
	
    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 0,           "UInt", 0)
    Sleep(50)
    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 2,           "UInt", 0)	
	Sleep(100)
	
    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 0,           "UInt", 0)
    Sleep(50)
    DllCall("keybd_event", "UInt", 0x0D, "UInt", 0x1C, "UInt", 2,           "UInt", 0)	
	Sleep(100)
}