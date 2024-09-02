@echo off

del "%Userprofile%\Local Settings\Temporary Internet Files\*.*"

del "%Userprofile%\Local Settings\Temp\*.*"

del "%Userprofile%\Recent\*.*"

del C:\WINDOWS\Prefetch\?*.*

del C:\Documents and Settings\automation\Local Settings\Temporary Internet Files\?*.*

RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255



