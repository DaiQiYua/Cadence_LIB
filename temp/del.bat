@echo off

del /s *.opj
del /s *.jrl
del /s *.jrl*
del /s *.png
del /s *.DBK
del /s *.txt
del /s *.txt*
del /s *.log
del /s *.log*
del /s *.dml
del /s *.PRP
del /s *.DRC
del /s *.csv
del /s *.DSNlck
del /s *.mrk
del /s *.map
del /s *.tag
del /s *.orig

rd /s /q translator.run
rd /s /q symbols
rd /s /q signoise.run
rd /s /q GPUCache

for /f "delims=" %%a in ('dir /ad /b /s ""^|sort /r ') do (
   rd "%%a">nul 2>nul &&echo 空目录"%%a"成功删除！
)
pause