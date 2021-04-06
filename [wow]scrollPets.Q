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
Function randInt(base, range)
	randInt = base + int(rnd() * range)
End Function


Function wheelUp()
	MouseWheel 1
	Delay randInt(100, 100)

	MouseWheel 1
	Delay randInt(300, 100)
	
	If randInt(0, 100) < 33 Then 
		MouseWheel 1
		Delay randInt(200, 200)	
	End If
End Function

Function wheelDown()
	Dim delay0
	Dim delay1
	Dim delay2
	
	delay0 = randInt(100, 100)
	delay1 = randInt(200, 100)
	delay2 = randInt(700, 300)
	
	MouseWheel -1
	Delay delay0
	
	If randInt(0, 100) < 66 Then 
		MouseWheel -1
		Delay delay1
	Else 
		delay1 = 0	
	End If
	
	MouseWheel -1 
	Delay delay2
	
	TracePrint "wheel down inner " & delay0 & ", " & delay1 & ", " & delay2
	wheelDown = delay0 + delay1 + delay2
End Function


// start here
For 1000
	Delay randInt(1000, 1000)
	
	
	wheelUp
	wheelDown
	Delay randInt(1800, 1000)
	
	wheelUp
	Delay randInt(1000, 500)
	
	
	total = 0
	
	For 999
		cost = wheelDown()
		
		TracePrint "wheel down cost " & cost & ", total " & total
		total = total + cost
		
		If total > 71000 Then 
			Goto toExit
		End If
	Next
	
	Rem toExit
	TracePrint "round cost " & total
	
	randWait = int(rnd() * 100)
	If randWait < 2 Then 
		Delay randInt(55000, 30000)
		TracePrint "rand sleep enter"
		
		KeyDown "Space", 1
		Delay randInt(800, 500)
		KeyUp "Space", 1
	End If
Next	
