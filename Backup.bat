@echo off
set origem="C:\Users\User\Documents\Manuais"
set destino="\\192.0.30.93\Instaladores"

:: Gera timestamp no formato DD-MM-AAAA_HH-MM
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
    set dia=%%a
    set mes=%%b
    set ano=%%c
)
for /f "tokens=1-2 delims=: " %%a in ('time /t') do (
    set hora=%%a
    set minuto=%%b
)

:: Remove caracteres inválidos para nome de arquivo
set hora=%hora::=%
set timestamp=%dia%-%mes%-%ano%_%hora%-%minuto%

:: Caminho corrigido do log
set log=C:\Users\User\Documents\Scripting\Logs\backup_%timestamp%.log

:: Executa robocopy com barra de progresso e log detalhado
robocopy %origem% %destino% /MIR /Z /R:3 /W:5 /V /ETA /TEE /LOG:"%log%"

echo Backup concluído com sucesso.
::pause




