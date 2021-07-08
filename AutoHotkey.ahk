#IfWinActive ahk_class Notepad++
$!LButton:: 
send {LButton}
send !{f12} 
exit
$^LButton:: 
send {LButton}
send !{f12} 
exit
!f:: send ^+{f}
!/:: send ^{enter}
$!d:: send ^{l}
^!o::
{
send ^{o}
sleep 1500
send ^{v}
send {enter}
}
exit
#IfWinActive 




!;:: send {:}
!':: send {"}
!9:: send {(}
!0:: send {)}
#IfWinActive, ahk_exe pycharm64.exe
!d:: send ^{y}
!f:: send ^+{f}

#IfWinActive


;$rbutton:: send ^{lbutton}

;lbutton::send ^{lbutton}
$^rbutton:: send {rbutton}

;^l::send {end}
^j::send {home}

#IfWinActive, ahk_exe studio64.exe
!d:: send ^{y}
!f:: send ^+{f}
!r:: send ^+{r}
f2:: send +{f6}
^t:: send !{f12}
!b:: send ^{b}
!s:: send {f8}
!e:: send {f7}
#IfWinActive


#IfWinActive, ahk_class SunAwtFrame
;$!d:: send ^!{e}
;^d:: send ^+{down}
!t:: send ^+{n}
#IfWinActive

#IfWinActive, ahk_exe idea64.exe
!d:: send ^{y}
!f:: send ^+{f}
;^d:: send ^+{down}
!up:: send !+{up}
!down:: send !+{down}
!s:: send {f8}
!e:: send {f7}
^t:: send !{f12}
#IfWinActive


#IfWinActive, ahk_exe clion64.exe
!d:: send ^{y}
!f:: send ^+{f}
!b:: send ^{b}
^t:: send !{f12}
!s:: send {f8}
!e:: send {f7}
f3:: send +{f9}
#IfWinActive



#IfWinActive ahk_class vwr::CDesktopWin
mbutton:: send {f7}
;$rbutton:: send ^{lbutton}
!d:: send ^{y}
!w:: send ^{f4}
!f:: send ^+{f}
!t:: send ^+!{n}
!r:: send +{f10}
f8:: send {f8}
+Tab:: send +{Tab}
!up:: send !+{up}
!down:: send !+{down}
#IfWinActive 

#IfWinActive, ahk_exe chrome.exe
#IfWinActive



#IfWinActive, ahk_exe devenv.exe
^d:: send ^{c}^{v}
!r:: send {f11}
^r:: send {f11}
!w::send ^{f4}
f8::send {f10}
f7::send {f11}
f6::send {f10}
f5::send {f11}
^LButton:: send {f12}
+enter::send ^+{enter}
!f:: send ^{t}
#IfWinActive

#IfWinActive, ahk_exe goland64.exe
!d:: send ^{y}
#IfWinActive

#IfWinActive, ahk_class SunAwtFrame
;!f::send ^!{l}
;code basic alt+/
;!d::send ^{y}
;!enter::send +{enter}
!r::send +{f9}
!w::send ^{f4}
#IfWinActive


Loop
{
    sleep, 1000
Transparent=1
WinGet, Transparent, Transparent, A
if Transparent!=150
	Continue

WinGet, id, list,,, Program Manager
Loop, %id%
{
this_ID := id%A_Index%
WinGetTitle, active_title, A
WinGetTitle, title, ahk_id %this_ID%
If title = %active_title%
  Continue
WinGetClass, class1, ahk_id %this_ID%
if class1 = MediaPlayerClassicW
  Continue

WinMinimize, %title%

}
}



!`::
WinGet, id, list,,, Program Manager
Loop, %id%
{
this_ID := id%A_Index%
WinGetTitle, active_title, A
WinGetTitle, title, ahk_id %this_ID%
If title = %active_title%
  Continue
WinGetClass, class1, ahk_id %this_ID%
if class1 = MediaPlayerClassicW
  Continue

WinMinimize, %title%
}
return



LWin & WheelUp::SendInput #{NumpadAdd}
LWin & WheelDown::SendInput #{NumpadSub}
LAlt & WheelUp::SendInput #{NumpadAdd}
LAlt & WheelDown::SendInput #{NumpadSub}
RAlt & WheelUp::SendInput #{NumpadAdd}
RAlt & WheelDown::SendInput #{NumpadSub}
;LCtrl & F:: SendInput ^!{Right}
;LCtrl & D:: SendInput ^!{Left}
;LCtrl & E:: SendInput ^!{Up}
;LCtrl & C:: SendInput ^!{Down}

SendMessage,0x112,0xF170,2,,Program Manager


mbutton::
;send ^{lbutton}
;SendMessage 0x112, 0xF140, 0, , Program Manager  ; Start screensaver
;SendMessage 0x112, 0xF170, 2, , Program Manager  ; Monitor off
return


;AppsKey::
;SendMessage 0x112, 0xF170, 2, , Program Manager  ; Monitor off
;SendMessage 0x112, 0xF140, 0, , Program Manager  ; Start screensaver
;SendMessage,0x112,0xF170,2,,Program Manager
;Sleep, 200
;SendMessage,0x112,0xF170,2,,Program Manager
;return

;f8::
;SendMessage 0x112, 0xF140, 0, , Program Manager  ; Start screensaver
;SendMessage 0x112, 0xF170, 2, , Program Manager  ; Monitor off
;return






;LWin & j::AltTab
$!u:: send {backspace}
$!v:: send ^{v}
$!c:: send ^{c}
$!x:: send ^{x}
$!z:: send ^{z}
$!w:: send ^{w}
$!a:: send ^{a}

#IfWinActive, ahk_class IEFrame
$!r:: send {f5}
#IfWinActive

#IfWinActive, ahk_class mp3DCWndClass
$f4::
send ^{f4}
sleep,300
send {left}
send {enter}
exit
j::send {left}
l::send {right}
#e::
sleep,100 
send {f10}
sleep,50
send {f}
sleep,50
send {e}
sleep,1000
;send ^{a}
send ^{c}
StringReplace, clipboard, clipboard, `.mp3, , All
send +{-}
;send ^{v}
;send +{left}
exit
e::
send {f10}
sleep,50
send {f}
sleep,50
send {e}
sleep,1000
;send ^{a}
send ^{c}
StringReplace, clipboard, clipboard, `.mp3, , All
send ^{v}
;send +{left}
send {right}
send +{-}
exit

$^e::
send {f10}
sleep,50
send {f}
sleep,50
send {e}
sleep,1000
;send ^{a}
send ^{c}
StringReplace, clipboard, clipboard, `.mp3, , All
send ^{v}
send +{left}

exit

#IfWinActive


#IfWinActive, ahk_class #32770 ; eclipse proposal window
!space:: send {enter}
!.:: send ^{o}
#IfWinActive


#IfWinActive,HSQL Database Manager
!r:: send ^{r}
#IfWinActive





#j::send ^+{esc}



;#IfWinNotActive,Windows Task Manager ;taskbar window
;^!o::
;send #{m}
;send ^+{esc}
;sleep,30
;ControlFocus, SysListView321, A 
;exit
;#IfWinNotActive

#IfWinActive,Windows Task Manager ;taskbar window
i::send {up}
,:: send {down}
k:: send {down}
space:: send {enter}
;send {f10}
;sleep,50
;send {w}
;sleep,50
;send {b}
exit
#IfWinActive 


!i::send {up}
!j:: send {left}
!l:: send {right}
;!,:: send {down}
!k:: send {down}
!,:: send {down}
!g:: send ^{g}

;#t::AltTabMenu


#IfWinActive,ahk_class MediaPlayerClassicW
#m::
;WinSet, Region, 0-0 1280-0 1280-800 0-800 0-0   100-650 1180-650 1180-799 100-799 100-650,A
exit
#IfWinActive


#IfWinActive,GoldenDict
#m::
WinGetPos, X, Y, Width, Height,ahk_class QWidget
Height:=Height-50
;WinSet, Region, 0-53 W%Width% H%Height%,ahk_class QWidget
exit
#IfWinActive



^!r::Reload  ; Assign Ctrl-Alt-R as a hotkey to restart the script.
^i:: send {up}
;^j:: send ^{left}
;^l:: send ^{right}
;^,:: send {down}
^k:: send {down}
^h:: send ^{g}
;!x:: send ^{x}
;!v:: send ^{v}
;^!u:: send {backspace}

mbutton::lbutton

$#up:: send ^!{up 2}
$#down:: send ^!{down 2}
$#left:: send ^!{left 2}
$#right:: send ^!{right 2}

$^u:: send {delete}
$+space:: send {tab}

;LAlt & Wheelup::ShiftAltTab
;LAlt & WheelDown::AltTab


#k:: 
tooltip work hard
exit


write(filename="notes.txt")
{
AutoTrim, off
FileAppend,
(
--------------------------





%clipboard%



), F:\share\tasks\%filename%

}


#IfWinActive,ahk_class SqlplusWClass
WheelUp:: send {Up}
WheelDown:: send {Down}
#IfWinActive

#IfWinActive,ahk_class TfrmMain
!f:: send ^{d}
!s:: send ^{s}
;^d:: send {f11}
$^d::
send ^{s}
send ^{d}
exit
#IfWinActive

#IfWinActive,ahk_class TPLSQLDevForm
!p::
AutoTrim, off
write("plsql.txt")
exit
!f:: 
send {f8}
exit
#IfWinActive


!p::
AutoTrim, off
write()
exit


^+!p::
send {PrintScreen}
run mspaint.exe
sleep,900
send ^{v}
sleep,20
send ^{s}
sleep,100
clipboard=F:\share\tasks\last_task_%A_YYYY%年%A_MM%月%A_DD%日 %A_Hour%时%A_Min%分%A_Sec%秒
sleep,450
send ^{v}
send {enter}
sleep,300
WinClose,ahk_class MSPaintApp
exit


;!space:: send ^{1}
;!space:: send {esc}
!8:: 
voice1()
exit



voiceZh()
{
send ^{c}
sleep,100
StringReplace, clipboard, clipboard, `<, , All
sleep,50
WinGet, original1, ID, A
WinActivate,ahk_class Afx:00400000:b:00010003:00000006:370019D3
sleep,400
send +{f5}
ControlFocus, Edit1, A 

send ^{a}
sleep,20
send {backspace}
sleep,20
send ^{v}
sleep,100
send {F5}
WinActivate, ahk_id %original1%
send ^+{A}
}



#IfWinActive ,IVONA Reader [Temporary panel] Trial (255 days left)
space:: send ^{1}
#IfWinActive

voice1()
{
;SetTitleMatchMode RegEx
send ^{c}
sleep,100
StringReplace, clipboard, clipboard, `<, , All
sleep,50
WinGet, original1, ID, A
WinActivate,IVONA Reader [Temporary panel] Trial (255 days left)
;IVONA Reader [New1] Trial (255 days left)
;WinActivate,ahk_class #32770 
sleep,400

ControlFocus, RICHEDIT50W1, A 

send ^{a}
sleep,20
send {backspace}
sleep,20
send ^{v}

sleep,400
ControlFocus, RICHEDIT50W2, A 
send ^{a}
sleep,20
send {backspace}
sleep,20
send ^{v}


send ^{1}
WinActivate, ahk_id %original1%
send ^+{A}
;send !{h}

}



voice()
{
send ^{c}
StringReplace, clipboard, clipboard, `<, , All
sleep,150
WinGet, original1, ID, A
WinActivate,ahk_class #32770
sleep,10
send ^{a}
send {backspace}
send ^{v}
WinActivate, ahk_id %original1%
}



;!0:: send +{0}
;!9:: send +{9}
;!8:: send +{8}
!7:: send +{7}
!6:: send +{6}
!5:: send +{5}
!4:: send +{4}
!3:: send +{3}
!2:: send +{2}
!1:: send +{1}

$#WheelUp:: send #{i}
$#WheelDown:: send #{,}
#i:: send #{NumpadAdd}
#,:: send #{NumpadSub}



!backspace:: send ^{backspace}

;!u:: send {backspace}
;!Enter:: send +{Enter}


^+i:: send +{up}
^+j:: send +{left}
;^+l:: send +{right}
^+,:: send +{down}
^+k:: send +{down}

$!e:: send {enter}

#IfWinActive , ahk_class SWT_Window0
!g::send ^{f6}
$MButton:: send !{F3}
$!r:: send ^{o}
$!f:: send ^{f}
;$!a:: send ^+{NumpadDiv}
;$!r:: send ^+{NumpadMult}
$!m:: send ^{m}
$!a:: send ^!{h}
!9::send !+{x}{j}
!0::send !+{x}{t}
Insert:: send {f6}
delete:: send {f7}
f12:: send {f5}
$^/:: send ^+{c}
;!e:: send !{h}
#n:: send {f7}
^e::WinActivate, ahk_class MediaPlayerClassicW
^!e::
WinGet, original, ID, A
WinActivate, ahk_class MediaPlayerClassicW
Send {Space}
WinActivate, ahk_id %original%
exit
!space:: send {enter}
#IfWinActive
;$!e:: 
;WinActivate, ahk_class SWT_Window0
;sleep,20
;send {esc}
;exit

#IfWinNotExist,ahk_class Chrome_WidgetWin_0
{
;!c:: WinActivate, ahk_class ConsoleWindowClass
}

#IfWinActive,ahk_class Chrome_WidgetWin_0
;$!c:: send !{h}
#IfWinActive


#IfWinNotActive,ahk_class Chrome_WidgetWin_0
;$!c:: WinActivate, ahk_class Chrome_WidgetWin_0
#IfWinNotActive


;!c:: WinActivate, ahk_class ConsoleWindowClass
;$!c:: WinActivate, ahk_class TPLSQLDevForm
;$!c:: WinActivate,ahk_class TfrmMain

;$!a:: WinActivate, ahk_class MediaPlayerClassicW
;$!;:: WinActivate, ahk_class Notepad++
;$!p:: WinActivate, ahk_class S_NoCliDrawWnd

^!j:: send ^{left}
^!l:: send ^{right}

;$^m:: send {RButton}
$^n:: send {LButton}


;CapsLock::Insert
;Insert::CapsLock

;$Up::send ^!{Up}
;$Left::send ^!{Left}
;$Down::send ^!{Down}
;$Right::send ^!{Right}
;$RButton::send ^{RButton}
;$^RButton::send {RButton}
;$Up::send {WheelUp}
;$Down::send {WheelDown}
;~LButton & WheelUp::send #{NumpadAdd}
;~LButton & WheelDown::send #{NumpadSub}
;$MButton::send ^!{i}
;/::send ^!{i}
;,::send #{NumpadSub}
;.::send #{NumpadAdd}

$+WheelUp::
send {LWin Down}
sleep,10
send {=}
send {LWin up}
exit
$+WheelDown::
send {LWin Down}
sleep,10
send {-}
send {LWin up}
exit

;$WheelUp::send #{NumpadAdd}
;$WheelDown::send #{NumpadSub}


$!NumpadAdd::send #{NumpadAdd}
$!NumpadSub::send #{NumpadSub}
;$WheelUp::send #{NumpadAdd}
;$WheelDown::send #{NumpadSub}
;$RButton::send ^{d}
;$RButton::


SetTitleMatchMode RegEx
IfWinActive, i).*- SharpDevelop
{
;  ^w:: send ^{F4}
}

SetTitleMatchMode RegEx
IfWinActive i).*Microsoft Visual Studio.*
{
!d::send ^+{l}
$!o::send ^{,}
!t::send ^{,}
;F3:: SendInput {F11}
F4:: SendInput {F10}
$!s:: SendInput ^{s}
;^[::
;WinMove,A,,0,0
;return
;^]::
;WinMove,A,,0,500
;return
}

SetTitleMatchMode RegEx
#IfWinActive i).*Microsoft Visual Studio.*
^.:: SendInput ^{j}
;^s:: SendInput ^+{s}
!d:: SendInput ^{c}^{v}
^Enter:: SendInput ^+{Enter}
;^l:: send +{Down}
#IfWinActive


#IfWinActive ahk_class MozillaWindowClass
!r:: send ^{r}
#IfWinActive 


#IfWinActive ahk_class S_NoCliDrawWnd
#IfWinActive 


#IfWinActive ahk_class CabinetWClass
!d:: send {delete}
#IfWinActive 



#IfWinActive ahk_class Afx:400000:8:10003:0:4ad09af
!n:: send {f11}
!m:: send {f10}
!b:: send {f5}
#IfWinActive 


#IfWinActive ahk_class #32770
#IfWinActive 


;must open a goldendict window
lookDict()
{
;voice()
send {LButton}
WinGet, original, ID, A
send ^{c}
sleep,200
WinActivate,GoldenDict
StringReplace, clipboard, clipboard, `., , All
StringReplace, clipboard, clipboard, `,, , All
StringReplace, clipboard, clipboard, `?, , All
StringReplace, clipboard, clipboard, `:, , All
StringReplace, clipboard, clipboard, `", , All
StringReplace, clipboard, clipboard, `(, , All
StringReplace, clipboard, clipboard, `”, , All
StringReplace, clipboard, clipboard, `;, , All
StringReplace, clipboard, clipboard, `), , All
StringReplace, clipboard, clipboard, `!, , All
;tooltip,%clipboard%
send {esc}
send ^{v}
send {enter}
;sleep,1800
;WinActivate, ahk_id %original%
;write("new_words.txt")
exit
}


;Adobe

#IfWinActive ahk_class AcrobatSDIWindow1
f6::
send {f10}
send {d}
send {x}
sleep,100
send {enter}
exit
;!a:: send !{h}
Up:: send {wheelUp}
down:: send {wheeldown}
;;RButton:: send ^{c}
Space:: send ^{1}
!Space:: 
{
WinActivate, ahk_class MediaPlayerClassicW
;WinActivate, ahk_class WMP Skin Host
send {space}
sleep,10
send !{h}
}
exit
;WinActivate, ahk_class AcrobatSDIWindow
;3::send {esc}
e:: WinActivate, ahk_class SWT_Window0
i:: send {wheelUp}
;^l:: send ^{right}
^j:: send ^{left}
.:: send ^{.}
h:: send ^{g}
;g:: send ^{g}
;$MButton:: send ^{c}
,:: send {wheeldown}
;c:: send {wheeldown}
right:: send {wheeldown}
left:: send {wheelup}
;pgDn:: send ^{g}
+i:: send +{up}
+,:: send +{down}
+j:: send +{left}
;+l:: send +{right}
;!c:: send ^{c} send {LButton}
c:: 
send !{8}
exit
$!LButton::
send {LButton}
lookDict()
send ^+{A}
exit
f::
send {LButton}
lookDict()
send +^{A}
exit
j::
send {LButton}
lookDict()
send +^{A}
exit
k:: send {wheelDown}
g:: 
;voice()
WinGet, original, ID, A
send ^{c}
WinActivate,ahk_class QWidget
send ^{v}
send {enter}
sleep,1500
WinActivate, ahk_id %original%
send +^{A}
exit

u::
send {RButton}
sleep,10
send {u}
send ^{s}
write("pdf_comments.txt")
exit
;esc:: send ^+{a}
!mbutton::
send {LButton}
lookDict()
send +^{A}
exit
r::
send {RButton}
sleep,10
send {u}
send ^{s}
write("pdf_comments.txt")
exit

w::
send {RButton}
send {h}

exit
v::
voiceZh()
exit



q::
WinGet, original1, ID, A
;WinActivate,ahk_class Afx:00400000:b:00010003:00000006:01E60327
WinActivate,ahk_class Afx:00400000:b:00010003:00000006:370019D3
sleep,50
send {F6}
WinActivate, ahk_id %original1%

exit


#IfWinActive 


;$!a:: 
;WinActivate, ahk_class AcrobatSDIWindow
;sleep,20
;send {esc}
;exit

!mbutton::
send {LButton}
lookDict()
exit




#IfWinActive ahk_class QTool
c:: WinClose
#IfWinActive 



#IfWinActive ahk_class classFoxitReader1
Up:: send {wheelUp}
down:: send {wheeldown}
RButton:: send ^{c}
Space:: send ^{1}
.:: send ^{.}
h:: send ^{g}
,:: send {wheeldown}
#IfWinActive 

#IfWinActive ahk_class Chrome_WidgetWin_0
!r:: send ^{r}
#IfWinActive 


trimborder()
{
send ^!{3}
WinGetPos, X, Y, Width, Height,ahk_class #32770
Height:=Height-44
Width:=Width-20
;WinSet, Region, 0-0 W%Width% H%Height%,ahk_class #32770
exit
}


#IfWinActive ahk_class SWT_Window0
^\:: send ^+{\}
!\:: send ^+{\}
#/:: send {f3}
+!.::
send {.}
send {esc}
exit
f3:: send ^!{/}
+!/::
send !{/}
WinWait,ahk_class #32770
send {tab} 
;send ^!{3}
trimborder()
exit
f2:: send !+{r}
!y:: send {esc}
;$^d:: send ^{F11}
$^d:: send ^!{down}
!d:: send ^{d}
;^u:: send ^+{e}
^Enter:: send +{Enter}
^WheelUp:: send ^{=}
^WheelDown:: send ^{-}
$^r:: send ^{f}
+BS:: send ^{Del}
^y:: send ^+{f}
;!i:: send !{up}
;!,:: send !{down}
!n:: send {f5}
;!m:: send {f6}
!b:: send {f8}
;!o:: send ^+{o}
!+o:: send ^+{o}
!;:: send ^+{o}
!=:: send +{=}
!-:: send +{-}
!+i:: send !+{up}
;^s:: send ^+{s}
$!s:: send ^{s}
;!t:: send ^+{t}
!t:: send ^+{r}
!.:: send ^{o}
;#d:: send {f11}
;!f:: send ^{f11}
;!v:: send !+{q}{j}
;!q:: send !+{q}
#v:: send {esc}
;!space:: send {esc}
!f2:: send +{f2}
;!Space:: send ^{1}
!LButton:: 
send {LButton}
send {f3}
exit
!q:: send ^{q}

;!r::send !+{r}
#space:: send {enter}

#IfWinActive



!space:: send {enter}


#IfWinActive ahk_class Chrome_WidgetWin_0
!b:: send {f8}
!n:: send {f11}
!m:: send {f10}
#IfWinActive

#IfWinActive ahk_class IEDEVTOOLS
!n:: send {f11}
!m:: send {f10}
!b:: send {f5}
#IfWinActive

#IfWinActive ahk_class WMP Skin Host
Space:: send ^{p}
WheelDown:: send {F8}
WheelUp:: send {F9}
#IfWinActive

#IfWinActive ahk_class wndclass_desked_gsk
;$^d:: send {F5}
#IfWinActive

#IfWinNotActive ahk_class QWidget
!g::
send {LButton}
lookDict()
send {LButton}
exit
#IfWinActive



#IfWinActive ahk_class MediaPlayerClassicW
!l:: send {PgDn}
!j:: send {pgUp}
l:: send ^{right}
j:: send ^{left}
h:: send ^{g}
i:: send {up}
,:: send {down}
;^!o:: send ^{7}
;WheelUp::SendInput #{NumpadAdd}
;WheelDown::SendInput #{NumpadSub}
return





r::
WinGet, original, ID, A
;Height:=540
Height:=560
;Width:=1024
Width:=1280
WinMove,A,,0,0,%Width%,%Height%
exit

e:: send {Space}
;Down::
;SendInput ^{Numpad8 6}
;return
;Up::
;SendInput ^{Numpad2 6}
;return
Left::
SendInput ^{Numpad6}
return
Right::
SendInput ^{Numpad4}
return

d::
SendInput ^{Numpad8 6}
return
s::
SendInput ^{Numpad2 6}
return
a::
SendInput ^{Numpad6 6}
return
f::
SendInput ^{Numpad4 6}
return
#IfWinActive

$!]::
WinMaximize,A
return

$![::
WinRestore,A


return




$^e::
;$RButton::
WinGet, original, ID, A
WinActivate, ahk_class MediaPlayerClassicW
;WinActivate,ahk_class WMP Skin Host
;WinActivate, ahk_class MozillaWindowClass
Send {Space}
;Send ^{p}
WinActivate, ahk_id %original%
Exit




;$^d::
;WinGet, original, ID, A
;WinActivate, ahk_class wxWindowClassNR
;Send {F9}
SetTitleMatchMode RegEx

;WinActivate i).*- SharpDevelop
;Sleep,100
;send {F5}

WinActivate i).*Microsoft Visual Studio.*
send ^{F5}

;WinActivate, ahk_class ConsoleWindowClass
;send {Up}
;send {Enter}

WinActivate, ahk_id %original%
Exit


;$^d::send !{TAB}
;$^d::
;IfWinActive, ahk_class MozillaWindowClass
;{
;    WinMinimize 
;    return
;}
;WinActivate, ahk_class MozillaWindowClass
;send {F5}
;Exit

$^+Up::
WinGet, original, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %original%
WinWait, ahk_id %original%
WinMove, X, Y-15
exit

$^+Down::
WinGet, original, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %original%
WinWait, ahk_id %original%
WinMove , X, Y+15
ToolTip
exit

$^+Left::
WinGet, original, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %original%
WinWait, ahk_id %original%
WinMove, X-15, Y
exit

$^+Right::
WinGet, original, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %original%
WinWait, ahk_id %original%
WinMove, X+15, Y
exit

;$^m::
;run sublime_text.exe
;exit

$^'::
WinActivate, GoldenDict
exit






#IfWinActive ahk_class ConsoleWindowClass
^v:: 
click right
sleep,20
send {p}
sleep,10
send {enter}
exit
!v::
send {RButton}
sleep,20
send {p}
sleep,10
send {enter}
exit
#IfWinActive



;set transparent window
n=0
!+t::
WinGetActiveTitle, T
if n=0
{
WinSet, Transparent, 150, %T%
;WinSet, TransColor, white 150, %T%
n=1
Exit
}
WinSet, Transparent, Off, %T%

n=0
Exit


;on top
^!SPACE::
WinGet, ExStyle, ExStyle, A
if (ExStyle & 0x8)
{
WinSet,AlwaysOnTop,off,A
;ToolTip,Disabled
}
else
{
WinSet,AlwaysOnTop,on,A
;ToolTip,Enabled
}
Sleep,2000
ToolTip
return



;begin hide menubar
#SingleInstance, force

^!p::
    ToggleMenu( WinExist("A") )
return


;-----------------------------------------------------------------------------------
; PURPOSE:      Toggles the menu ON or OFF for given window
;
; ARGS:         hWin    - Handle of the host window
;
; RETURNS:      True on success, False on failure
;
; NOTES:        TogglMenu does not work on floating menu bars.
;               Floating menu bars are custom controls that mimic standard menus; they are not menus.
; By majkinetor
ToggleMenu( hWin )
{
    global
   
    if ToggleMenu_a[%hWin%]_menuHandle = 0
        return 0

    if ToggleMenu_a[%hWin%]_menuHandle =
    {
        ToggleMenu_a[%hWin%]_menuHandle := DllCall("GetMenu", "uint", hWin)
        ToggleMenu_a[%hWin%]_visible := true
    }
    
    if (ToggleMenu_a[%hWin%]_visible)
    {
            DllCall("SetMenu", "uint", hWin, "uint", 0)
            WinSet, Style, -0xC00000, A
            WinSet, Style, -0x800000, A
    }
    else
    {
           DllCall("SetMenu", "uint", hWin, "uint", ToggleMenu_a[%hWin%]_menuHandle )
           WinSet, Style, +0xC00000, A
           WinSet, Style, +0x800000, A
    }
    ToggleMenu_a[%hWin%]_visible := !ToggleMenu_a[%hWin%]_visible
    return 1
}
;end hide menubar

!h::
IfWinActive, ahk_class TPLSQLDevForm
{
WinActivate, ahk_class AcrobatSDIWindow
exit
}
IfWinActive, ahk_class TfrmMain
{
WinActivate, ahk_class AcrobatSDIWindow
exit
}
WinMinimize,A
exit

;!f::
;WinMinimize, A
;exit

^!1::
WinSet, Style, +0xC00000, A
exit
^!2::
hWin := WinExist("A")
DllCall("SetMenu", "uint", hWin, "uint", ToggleMenu_a[%hWin%]_menuHandle )
ToggleMenu_a[%hWin%]_visible := true
exit

;borderless
^!3::
WinSet, Style, -0xC40000, A
exit

^!4::
WinSet, Style, +0xC40000, A
exit


#1::
WinShow,ahk_class Shell_TrayWnd
WinShow,开始 ahk_class Button
Return

#2::
WinHide,ahk_class Shell_TrayWnd
WinHide,开始 ahk_class Button
WinHide,开始 ahk_id 0x00010060
Return

#IfWinActive ahk_class ConsoleWindowClass
+PgUp::
Send {WheelUp}
Return

+PgDn::
Send {WheelDown}
Return

^Up::
Send {WheelUp}
Return

^Down::
Send {WheelDown}
Return


#IfWinActive

;----------------resize window--------------
#IfWinActive ahk_class test

#Left::
WinGet, original, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %original%
Width:=Width-15
WinMove,A,,%X%,%Y%,%Width%,%Height%
exit

#Right::
WinGet, original, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %original%
Width:=Width+15
WinMove,A,,%X%,%Y%,%Width%,%Height%
exit

#Up::
WinGet, original, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %original%
Height:=Height-15
WinMove,A,,%X%,%Y%,%Width%,%Height%
exit

#Down::
WinGet, original, ID, A
WinGetPos, X, Y, Width, Height, ahk_id %original%
Height:=Height+15
WinMove,A,,%X%,%Y%,%Width%,%Height%
exit

#IfWinActive

ResizeWin(Width = 0,Height = 0)
{
  WinGetPos,X,Y,W,H,A
  If %Width% = 0
    Width := W

  If %Height% = 0
    Height := H

  WinMove,A,,%X%,%Y%,%Width%,%Height%
}
#!u::ResizeWin(800,600)




;x=1


SystemCursor(OnOff=1)   ; INIT = "I","Init"; OFF = 0,"Off"; TOGGLE = -1,"T","Toggle"; ON = others
{
   static AndMask, XorMask, $, h_cursor
      ,c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13  ; system cursors
        , b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13  ; blank cursors
        , h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13  ; handles of default cursors
   if (OnOff = "Init" or OnOff = "I" or $ = "")       ; init when requested or at first call
   {
      $ = h                                           ; active default cursors
      VarSetCapacity( h_cursor,4444, 1 )
      VarSetCapacity( AndMask, 32*4, 0xFF )
      VarSetCapacity( XorMask, 32*4, 0 )
      system_cursors = 32512,32513,32514,32515,32516,32642,32643,32644,32645,32646,32648,32649,32650
      StringSplit c, system_cursors, `,
      Loop %c0%
      {
         h_cursor   := DllCall( "LoadCursor", "uint",0, "uint",c%A_Index% )
         h%A_Index% := DllCall( "CopyImage",  "uint",h_cursor, "uint",2, "int",0, "int",0, "uint",0 )
         b%A_Index% := DllCall("CreateCursor","uint",0, "int",0, "int",0
                             , "int",32, "int",32, "uint",&AndMask, "uint",&XorMask )
      }
   }
   if (OnOff = 0 or OnOff = "Off" or $ = "h" and (OnOff < 0 or OnOff = "Toggle" or OnOff = "T"))
      $ = b       ; use blank cursors
   else
      $ = h       ; use the saved cursors

   Loop %c0%
   {
      h_cursor := DllCall( "CopyImage", "uint",%$%%A_Index%, "uint",2, "int",0, "int",0, "uint",0 )
      DllCall( "SetSystemCursor", "uint",h_cursor, "uint",c%A_Index% )
   }
}

;!c::
;x:=0
;SystemCursor(x)
;exit

;!v::
;x:=1
;SystemCursor(x)
;exit


;Alt::Ctrl
Alt:: 
exit