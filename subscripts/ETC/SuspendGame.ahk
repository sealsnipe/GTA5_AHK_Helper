SuspendGame()
{
    processName := "GTA5_Enhanced.exe"
    processPID := ProcessExist(processName)
    
    if (processPID) {
        ToolTip("Suspending " . processName . " for 8 seconds...", 0, 0)
        processSuspend(processPID)
        Sleep(8000)
        processResume(processPID)
        ToolTip()
        ToolTip("Process resumed", 0, 0)
        Sleep(1000)
        ToolTip()
    } else {
        ToolTip(processName . " not found", 0, 0)
        Sleep(1500)
        ToolTip()
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
