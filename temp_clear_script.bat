@echo off

SET SRC1=C:\Users
SET SRC2=Windows\Temp
SET SRC3=AppData\Roaming\Microsoft\Windows\Recent
SET SRC4=AppData\Local\Temp
SET SRC5=Cookies

echo cleaning temporary internet files
FOR /D %%X IN ("%SRC1%\*") DO FOR /D %%Y IN ("%%X\%SRC2%\*.*") DO RMDIR /S /Q "%%Y"

echo cleaning history
FOR /D %%X IN ("%SRC1%\*") DO FOR /D %%Y IN ("%%X\%SRC3%\*.*") DO RMDIR /S /Q "%%Y"

echo cleaning windows temp files
FOR /D %%X IN ("%SRC1%\*") DO FOR /D %%Y IN ("%%X\%SRC4%\*.*") DO RMDIR /S /Q "%%Y"
FOR /D %%X IN ("%SRC1%\*") DO FOR %%Y IN ("%%X\%SRC3%\*.*") DO DEL /F /S /Q "%%Y"
FOR /D %%X IN ("%SRC1%\*") DO FOR %%Y IN ("%%X\%SRC4%\*.*") DO DEL /F /S /Q "%%Y"

echo cleaning Cookies
FOR /D %%X IN ("%SRC1%\*") DO FOR %%Y IN ("%%X\%SRC5%\*.*") DO DEL /F /S /Q "%%Y"

del /f /s /q "%windir%\temp"
FOR /D %%X IN ("%windir%\temp\*") DO RMDIR /S /Q "%%X"



