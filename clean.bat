@echo off

del /s *.opj
del /s *.OBK
del /s *.OLBlck
del /s *.jrl
del /s *.jrl*
del /s *.log
del /s *.log*
del /s *.tag
del /s *.rpt


rd /s /q %cd%\PCB_lib\DRA\stepFacetFiles4Map
rd /s /q %cd%\PCB_lib\DRA\signoise.run
rd /s /q %cd%\PCB_lib\DRA\*-PSpiceFiles

for /f "delims=" %%a in ('dir /ad /b /s ""^|sort /r ') do (
   rd "%%a">nul 2>nul &&echo 空目录"%%a"成功删除！
)

pause