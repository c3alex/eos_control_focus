; #Requires AutoHotkey v2.0

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1

Menu, Tray, Icon, C:\Windows\system32\shell32.dll, 196 ;Set custom Script icon

d::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad133, Окно удаленной съемки с визированием по экрану,,,, ; фокус off

f::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad132, Окно удаленной съемки с визированием по экрану,,,, ; фокус on

a::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad130, Окно удаленной съемки с визированием по экрану,,,, ; просмотр глубины резкости on

s::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad129, Окно удаленной съемки с визированием по экрану,,,, ; просмотр глубины резкости off

; ГРИП

Tab::
Macro1:
If (DOF := !DOF)
{
   ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad130, Окно удаленной съемки с визированием по экрану,, Left, 1,  NA ; просмотр глубины резкости on
}
Else
{
   ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad129, Окно удаленной съемки с визированием по экрану,, Left, 1,  NA ; просмотр глубины резкости off
}
Return

; сделать кадр

Space::
RButton::
ControlSend, , {Space}, EOS R6
Return

; переключение на режим стекинг

^Tab::
Macro3:
ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad133, Окно удаленной съемки с визированием по экрану,,,, ; фокус off
Sleep, 333
WinActivate, EOS R6
Sleep, 333
ControlClick, WindowsForms10.SysTabControl32.app.0.e4c6c4_r8_ad11, EOS R6,, Left, 1,  x65 y12 NA
Sleep, 10
ControlClick, WindowsForms10.Window.8.app.0.e4c6c4_r8_ad120, EOS R6,, Left, 1,  x79 y8 NA
Sleep, 300
ControlGet, StackMode, Choice, , WindowsForms10.COMBOBOX.app.0.e4c6c4_r8_ad13, Брекетинг фокуса
If (StackMode == "Запретить")
{
    Control, Choose, 1, WindowsForms10.COMBOBOX.app.0.e4c6c4_r8_ad13, Брекетинг фокуса
}
Else
{
    Control, Choose, 2, WindowsForms10.COMBOBOX.app.0.e4c6c4_r8_ad13, Брекетинг фокуса
}
ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad11, Брекетинг фокуса,, Left, 1,  NA
Sleep, 500
WinActivate, Окно удаленной съемки с визированием по экрану
Sleep, 333
Return

; начало работы (убрать квадрат и переключить на авто ББ)

^s::
Macro4:
ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad117, Окно удаленной съемки с визированием по экрану,, Left, 1,  NA
Sleep, 10
Control, Choose, 2, WindowsForms10.COMBOBOX.app.0.e4c6c4_r8_ad13, Окно удаленной съемки с визированием по экрану
Return

; Расставить окна для раскладки (вертикальная ориентация)

#1::
WinMaximize, Быстрый просмотр ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1
Sleep, 333
WinMove, Окно удаленной съемки с визированием по экрану ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1,, -7, 0, 1045, 1042
Sleep, 333
WinMove, EOS R6 ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1,, 1030, 0, 270, 651
Sleep, 333

Return

#2::
WinMaximize, Быстрый просмотр ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1
Sleep, 333
WinMove, Окно удаленной съемки с визированием по экрану ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1,, -7, 0, 1637, 1042
Sleep, 333
WinMove, EOS R6 ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1,, 1615, 0, 270, 651
Sleep, 333

Return

; изменение ИСО через колесо мыши

PgUp::ControlClick, WindowsForms10.Window.8.app.0.e4c6c4_r8_ad132, EOS R6 ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1,, WheelDown, 1, x43 y15 NA

PgDn::ControlClick, WindowsForms10.Window.8.app.0.e4c6c4_r8_ad132, EOS R6 ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1,, WheelUp, 1, x43 y15 NA

; поворот ориентации камеры на 180 градусов

^r::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad18, EOS R6 ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1,, Left, 2,  NA

; кратное увеличение живого просмотора

^1::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad16, Окно удаленной съемки с визированием по экрану ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1,, Left, 1,  NA ; x1
^2::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad124, Окно удаленной съемки с визированием по экрану ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1,, Left, 1,  NA ; x5
^3::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r8_ad123, Окно удаленной съемки с визированием по экрану ahk_class WindowsForms10.Window.8.app.0.e4c6c4_r8_ad1,, Left, 1,  NA ; x10



^Escape::ExitApp

CapsLock::Suspend
