@echo off
:title
cls
sc delete svcxkcore
rd /s /q "C:\windows\Downloaded Program Files\xkv3root"
taskkill /im prcsgin.exe /f
taskkill /im prcsxkman.exe /f
taskkill /im prcsxksm.exe /f
taskkill /im prcsxkdm.exe /f
taskkill /im prcsxsdbman.exe /f
taskkill /im svcxkcore.exe /f
taskkill /im xktmprcs.exe /f
reagentc /enable
goto title