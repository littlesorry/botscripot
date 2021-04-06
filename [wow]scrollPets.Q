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
Number=14460
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]
Use mouse wheel up and down to play pet battle automatically

[Script]
Function randInt(base, range)
	randInt = base + int(rnd() * range)
End Function

Function oneWheel(direction, base, range, condition)
	Dim delay0
	delay0 = 0
	 
	If condition > 100 or randInt(0, 100) < condition Then 
		MouseWheel direction
		delay0 = randInt(base, range)
		Delay delay0
	End If
	
	oneWheel = delay0
End Function


Function wheelUp()
	oneWheel 1, 80, 80, 999
	oneWheel 1, 300, 100, 999
	oneWheel 1, 100, 100, 33
End Function


Function wheelDown()
	Dim delay0
	
	delay0 = 0
	delay0 = delay0 + oneWheel(-1 , 70, 50, 999)
	delay0 = delay0 + oneWheel(-1 , 80, 40, 999)
	delay0 = delay0 + oneWheel(-1, 90, 50, 75)
	delay0 = delay0 + oneWheel(-1, 100, 50, 66)
	delay0 = delay0 + oneWheel(-1, 600, 300, 999)
	
	wheelDown = delay0
End Function


// start here
TracePrint now & " >>>round start"

For 99
	Delay randInt(1000, 200)
	
	wheelUp
	wheelDown
	Delay randInt(900, 400)
	
	wheelUp
	Delay randInt(1000, 500)
	
	total = 0
	
	For 99
		cost = wheelDown()
		
		TracePrint now & " >>>wheel down cost " & cost & ", total " & total
		total = total + cost
		
		If total > 71000 Then 
			Goto toNext
		End If
	Next
	
	Rem toNext
	TracePrint now & " >>>total cost " & total
	
	If randInt(0, 100) < 2 Then 
		Delay randInt(59000, 30000)
		TracePrint now & " >>>rand sleep enter"
		
		KeyDown "Space", 1
		Delay randInt(800, 500)
		KeyUp "Space", 1
	End If
Next	
