UpdateKeys() {
    global currentMode
    SendInput("{w up}{d up}{Numpad8 up}")
    if (currentMode = 1)
        SendInput("{w down}")
    else if (currentMode = 2)
        SendInput("{w down}{d down}")
    else if (currentMode = 3)
        SendInput("{w down}{Numpad8 down}")
}