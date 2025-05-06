; SuspendGame.ahk
; Suspends notepad.exe for 8 seconds
; Created for GTA5PC_Multiscript by sadge
; Requires AutoHotkey v2.0

SuspendGame()
{
    ; Get process ID of notepad.exe
    processName := "GTA5_Enhanced.exe"
    
    ; Attempt to find the process
    processPID := ProcessExist(processName)
    
    if (processPID) {
        ; Display a tooltip to inform user that suspension is happening
        ToolTip("Suspending " . processName . " for 8 seconds...", 0, 0)
        
        ; Suspend the process
        processSuspend(processPID)
        
        ; Wait for 8 seconds
        Sleep(8000)
        
        ; Resume the process
        processResume(processPID)
        
        ; Clear the tooltip
        ToolTip()
        
        ; Show confirmation
        ToolTip("Process resumed", 0, 0)
        Sleep(1000)
        ToolTip()
    } else {
        ; Notify if process not found
        ToolTip(processName . " not found", 0, 0)
        Sleep(1500)
        ToolTip()
    }
}

; Function to suspend a process by PID
processSuspend(pid) {
    h := DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
    if (h) {
        DllCall("ntdll.dll\NtSuspendProcess", "Int", h)
        DllCall("CloseHandle", "Int", h)
        return true
    }
    return false
}

; Function to resume a suspended process by PID
processResume(pid) {
    h := DllCall("OpenProcess", "uInt", 0x1F0FFF, "Int", 0, "Int", pid)
    if (h) {
        DllCall("ntdll.dll\NtResumeProcess", "Int", h)
        DllCall("CloseHandle", "Int", h)
        return true
    }
    return false
}