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

d::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r7_ad133, Окно удаленной съемки с визированием по экрану,,,, ; фокус on

f::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r7_ad132, Окно удаленной съемки с визированием по экрану,,,, ; фокус off

a::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r7_ad130, Окно удаленной съемки с визированием по экрану,,,, ; просмотр глубины резкости on

s::ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r7_ad129, Окно удаленной съемки с визированием по экрану,,,, ; просмотр глубины резкости off

global DOF = True
vk9::
Macro3:
If (DOF := !DOF)
{
   ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r7_ad130, Окно удаленной съемки с визированием по экрану,, Left, 1,  NA ; просмотр глубины резкости on
}
Else
{
   ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r7_ad129, Окно удаленной съемки с визированием по экрану,, Left, 1,  NA ; просмотр глубины резкости off
}
Return

Space::
Macro1:
ControlSend, , {Space}, EOS R6
Return

vkDC::
Macro2:
WinActivate, EOS R6
Sleep, 333
ControlClick, WindowsForms10.SysTabControl32.app.0.e4c6c4_r7_ad11, EOS R6,, Left, 1,  x65 y12 NA
Sleep, 10
ControlClick, WindowsForms10.Window.8.app.0.e4c6c4_r7_ad120, EOS R6,, Left, 1,  x79 y8 NA
Sleep, 300
ControlGet, StackMode, Choice, , WindowsForms10.COMBOBOX.app.0.e4c6c4_r7_ad13, Брекетинг фокуса
If (StackMode == "Запретить")
{
    Control, Choose, 1, WindowsForms10.COMBOBOX.app.0.e4c6c4_r7_ad13, Брекетинг фокуса
}
Else
{
    Control, Choose, 2, WindowsForms10.COMBOBOX.app.0.e4c6c4_r7_ad13, Брекетинг фокуса
}
ControlClick, WindowsForms10.BUTTON.app.0.e4c6c4_r7_ad11, Брекетинг фокуса,, Left, 1,  NA
Sleep, 500
WinActivate, Окно удаленной съемки с визированием по экрану
Sleep, 333
Return

F8::ExitApp

vk14::Suspend

