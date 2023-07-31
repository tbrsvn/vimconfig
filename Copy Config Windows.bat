del C:\Users\%USERNAME%\AppData\Local\nvim
copy nvim C:\Users\%USERNAME%\AppData\Local\nvim
del C:\Users\%USERNAME%\vimfiles
copy vimfiles C:\Users\%USERNAME%\vimfiles
copy _vimrc C:\Users\%USERNAME%\_vimrc
copy nvimfont.ttf %SYSTEMROOT%\Fonts\nvimfont.ttf
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Hack" /t REG_SZ /d nvimfont.ttf /f
