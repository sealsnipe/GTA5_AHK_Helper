#Requires AutoHotkey v2.0
#SingleInstance Force
#UseHook

currentMode := 0


SetWorkingDir A_ScriptDir
; -------------- include subscripts ------------------------
#Include %A_ScriptDir%\\subscripts\\SM\\PrivateCrewSession.ahk
#Include %A_ScriptDir%\\subscripts\\SM\\JoinFirstFriend.ahk
#Include %A_ScriptDir%\\subscripts\\SM\\JoinPublicSession.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\OpenSpawnPoint.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\EquipArmor.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\EatSnacks.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RefillAmmo.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\AutoArmor.ahk
#Include %A_ScriptDir%\\subscripts\\ETC\\AntiAFK.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\CEOChopper.ahk
;#Include %A_ScriptDir%\\subscripts\\IM\\HireCrew.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RegisterCEO.ahk
#Include %A_ScriptDir%\\subscripts\\SM\\JoinCrew.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\CallLester.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\CallMechanic.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\CallMors.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\CallPegasus.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\Franklin.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\CallSessanta.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\CallSimeon.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\CallAssistant.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\CallMerryweather.ahk
#Include %A_ScriptDir%\\subscripts\\ETC\\AntiAFK.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\Photo.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\Internet.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\job_list.ahk
#Include %A_ScriptDir%\\subscripts\\ETC\\passive_mode.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RequestPersonalVehicle.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RequestPersonalAircraft.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RequestSpecialVehicle.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RequestAvengerThruster.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RequestAvenger.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RequestTerrorbyte.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RequestTerrorbyteVehicle.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RequestKosatkaHelicopter.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RequestAcidLab.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\AssociateChopper.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\AvengerAutopilot.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\RetireCEO.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\HireCrew.ahk
#Include %A_ScriptDir%\\subscripts\\PH\\SecuroserveAccept.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\LeaveSecuroServe.ahk
#Include %A_ScriptDir%\\subscripts\\IM\\ReturnPersonalVehicle.ahk
#Include %A_ScriptDir%\\subscripts\\ETC\\UpdateKeys.ahk
#Include %A_ScriptDir%\\subscripts\\SM\\CareerScreen.ahk

; ------------ Hotkeys trigger workflows -------------------
currentMode := 0
$F1::PrivateCrewSession()
$F2::JoinFirstFriend()
$F3::JoinPublicSession()
$F4::JoinCrew()
$F5::EquipArmor()
$F6::EatSnacks()
$F7::RefillAmmo()
$F8::AutoArmor()
$F9::OpenSpawnpoint()
$F10::CEOChopper()
$F11::HireCrew()
$F12::RegisterCEO()
$^F1::CallLester()
$^F2::CallMechanic()
$^F3::CallMors()
$^F4::CallPegasus()
$^F5::Franklin()
$^F6::CallSessanta()
$^F7::CallSimeon()
$^F8::CallAssistant()
$^F9::CallMerryweather()
;$^F10::AntiAFK()
$^F11::Photo()
$^F12::Internet()
$+F1::RequestPersonalVehicle()
$+F2::RequestPersonalAircraft()
$+F3::RequestSpecialVehicle()
$+F4::RequestAvengerThruster()
$+F5::RequestAvenger()
$+F6::RequestTerrorbyte()
$+F7::RequestTerrorbyteVehicle()
$+F8::RequestKosatkaHelicopter()
$+F9::RequestAcidLab()
$+F10::AssociateChopper()
$+F11::ReturnPersonalVehicle()
$+F12::AvengerAutopilot()
$^+F1::job_list() ; Job List
;$^+F2:: ; Nicht definiert
;$^+F3:: ; Nicht definiert
;$^+F4:: ; Nicht definiert
;$^+F5:: ; Nicht definiert
;$^+F6:: ; Nicht definiert
$^+F7::CareerScreen()
;$^+F8:: ; Nicht definiert
$^+F9::PassiveMode()
;$^+F10::
$^+F11::SecuroserveAccept()
$^+F12::RetireCEO()
$SC056:: {	;<
    global currentMode
    currentMode := (currentMode = 1) ? 0 : 1
    UpdateKeys()
}
$^F10:: {
    global currentMode
    currentMode := (currentMode = 2) ? 0 : 2
    UpdateKeys()
}
$NumpadEnd:: { ;Numpad1
    global currentMode
    currentMode := (currentMode = 3) ? 0 : 3
    UpdateKeys()
}