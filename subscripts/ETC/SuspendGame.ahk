global suspensionActive := false
global suspensionPID := 0

SuspendGame()
{
    global suspensionActive, suspensionPID
    processName := "GTA5_Enhanced.exe"
    processPID := ProcessExist(processName)
    
    if (suspensionActive) {
        processResume(suspensionPID)
        suspensionActive := false
        suspensionPID := 0
        ToolTip()
        ToolTip("Suspension cancelled, process resumed", 0, 0)
        Sleep(1000)
        ToolTip()
        return
    }
    
    if (processPID) {
        ToolTip("Suspending " . processName . " for 8 seconds...", 0, 0)
        suspensionActive := true
        suspensionPID := processPID
        processSuspend(processPID)
        
        SetTimer(ResumeProcess, -8000) 
    } else {
        ToolTip(processName . " not found", 0, 0)
        Sleep(1500)
        ToolTip()
    }
}

ResumeProcess()
{
    global suspensionActive, suspensionPID
    
    if (suspensionActive && suspensionPID) {
        processResume(suspensionPID)
        ToolTip()
        ToolTip("Process resumed", 0, 0)
        Sleep(1000)
        ToolTip()
        
        suspensionActive := false
        suspensionPID := 0
    }
}

processSuspend(pid) {
    h := DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
    if (h) {
        DllCall("ntdll.dll\NtSuspendProcess", "Int", h)
        DllCall("CloseHandle", "Int", h)
        return true
    }
    return false
}

processResume(pid) {
    h := DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
    if (h) {
        DllCall("ntdll.dll\NtResumeProcess", "Int", h)
        DllCall("CloseHandle", "Int", h)
        return true
    }
    return false
}