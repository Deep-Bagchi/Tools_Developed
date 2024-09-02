Const END_OF_STORY = 6
Const MOVE_SELECTION = 0

Dim WB 
Dim WshShell 
Set WB = CreateObject("Word.Basic") 
Set WshShell = CreateObject("WScript.Shell") 
Set objWord = CreateObject("Word.Application")


 Set objDoc = objWord.Documents.Open("D:\webscreenshot.doc")
 Set objSelection = objWord.Selection


'Before run---Some application process' 
WshShell.SendKeys "%({TAB})"

 
wscript.sleep 100

WB.SendKeys "{prtsc}" 

Objselection.EndKey END_OF_STORY, MOVE_SELECTION
Objselection.paste

ObjDoc.Save
ObjDoc.Close
ObjDoc.Quit
ObjWord.Quit
Set ObjDoc = Nothing
Set ObjWord = Nothing
Set objSelection = Nothing
'msgbox "Done"
