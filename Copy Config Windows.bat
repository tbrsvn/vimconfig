del C:\Users\%USERNAME%\AppData\Local\nvim
mkdir C:\Users\%USERNAME%\AppData\Local\nvim
copy nvim C:\Users\%USERNAME%\AppData\Local\nvim
copy font.ttf %SYSTEMROOT%\Fonts\font.ttf
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Hack (TrueType)" /t REG_SZ /d font.ttf /f
