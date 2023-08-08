copy nvimfont.ttf %SYSTEMROOT%\Fonts\nvimfont.ttf
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Hack" /t REG_SZ /d nvimfont.ttf /f