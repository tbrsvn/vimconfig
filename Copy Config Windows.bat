del C:\Users\%USERNAME%\AppData\Local\nvim
mkdir C:\Users\%USERNAME%\AppData\Local\nvim
copy nvim C:\Users\%USERNAME%\AppData\Local\nvim
del C:\Users\%USERNAME%\AppData\Local\nvim-data\plugged
mkdir C:\Users\%USERNAME%\AppData\Local\nvim-data\plugged
copy plugged C:\Users\%USERNAME%\AppData\Local\nvim-data\plugged
del C:\Users\%USERNAME%\vimfiles
mkdir C:\Users\%USERNAME%\vimfiles
copy .vim\* C:\Users\%USERNAME%\vimfiles
copy _vimrc C:\Users\%USERNAME%\vimfiles
copy font.ttf %SYSTEMROOT%\Fonts\nvimfont.ttf
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Hack For Neovim (TrueType)" /t REG_SZ /d nvimfont.ttf /f
