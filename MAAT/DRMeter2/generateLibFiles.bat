
@echo off

pushd .

echo. && echo generating lib files...
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvarsall.bat" x86
call :handleError



lib /machine:x64 /def:

popd

echo. && echo finished generating lib files!!!
exit /b 0

:genLib
set defInName=~%1
set libOutName=~%2
set arch=~%3
exit /b 0

:handleError
if errorlevel 1 (
	echo. && echo Errors detected. Pausing...
	pause
	popd
	exit /b 0
)
