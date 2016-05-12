@echo off

Setlocal EnableDelayedExpansion
set DIR=%~dp0
REM no mark of \
set BASE_DIR=%DIR%
set LIB_DIR="%BASE_DIR%..\lib\"

echo DIR: %DIR%
echo base_dir: %BASE_DIR%
echo LIB_DIR: %LIB_DIR%

IF EXIST %BASE_DIR%\..\logs (set RIVERWEB_OPT= -Driverweb.log.file=%BASE_DIR%..\logs\riverweb.log
echo EXIST logs folder
echo riverweb_opt: %RIVERWEB_OPT%
)

set CONFIG_DIR=%BASE_DIR%..\config\
echo CONFIG_DIR: %CONFIG_DIR%


set CP_PATH=%CONFIG_DIR%

dir %CONFIG_DIR%

FOR /R %LIB_DIR% %%x in (*.jar) do (SET "CP_PATH=!CP_PATH!;%%x")
echo CP_PATH: %CP_PATH%
set CP_PATH=%CONFIG_DIR% :: for test purpose

REM "%JAVA_HOME%\bin\java" $RIVERWEB_OPT -cp $CP_PATH org.codelibs.riverweb.RiverWeb $@

