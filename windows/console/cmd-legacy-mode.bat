@echo off

if '%*'=='' call :help & exit /b
if '%1'=='on' (
  reg add "HKCU\Console" /v ForceV2 /t REG_DWORD /d 0x0 /f
) else if '%1'=='off' (
  reg add "HKCU\Console" /v ForceV2 /t REG_DWORD /d 0x1 /f
) else (
  call :help
)
exit /b

:help
echo Windows cmd legacy mode [on] / [off]
echo.