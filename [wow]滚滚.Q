[General]
SyntaxVersion=2
BeginHotkey=122
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=b52ebaa4-44c9-4efc-acb4-003cd7810097
Description=[wow]¹ö¹ö
Enable=1
AutoRun=0
[Repeat]
Type=2
Number=10860
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]

Delay int(rnd() * 1000) + 1000

MouseWheel 1
Delay int(rnd() * 50) + 100

MouseWheel 1
Delay int(rnd() * 200) + 500



MouseWheel -1
Delay int(rnd() * 100) + 100

MouseWheel -1
Delay  int(rnd() * 120) + 100

MouseWheel - 1 


Delay int(rnd() * 1000) + 2000


MouseWheel 1
Delay int(rnd() * 100) + 100

MouseWheel 1
Delay int(rnd() * 500) + 1200

total = 0

For 70
	MouseWheel -1
	rr0 = int(rnd() * 80) + 120
	Delay rr0
	
	MouseWheel -1
	rr1 = int(rnd() * 100) + 100
	Delay rr1
		
	MouseWheel -1
	rr2 = int(rnd() * 500) + 650
	Delay rr2
		
	total = total + rr0 + rr1 + rr2
	If total > 70000 Then 
		Goto toExit
	End If
Next

Rem toExit



randWait = int(rnd() * 100)
If randWait < 2 Then
	waitTime = int(rnd() * 30000) + 55000
	Delay waitTime
	
	KeyDown "Space", 1
	Delay int(rnd() * 500) + 1000
	KeyUp "Space", 1
End If
