@echo off

del /s *.opj
del /s *.OBK
del /s *.OLBlck

rd /s /q *PSpiceFiles
rd /s /q GPUCache

for /f "delims=" %%a in ('dir /ad /b /s ""^|sort /r ') do (
   rd "%%a">nul 2>nul &&echo 空目录"%%a"成功删除！
)
pause