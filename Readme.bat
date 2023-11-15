@echo off

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 이 프로그램을 "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"에 넣고 컴퓨터를 재시작하거나
:: 그냥 실행시키고 약 3~5분뒤 복구 모드에 진입후 고급 옵션 > 명령 프롬프트에서 rd /s /q "C:\windows/Downloaded Program Files\xkv3root"를 입력하세요.
:: 그 뒤에 컴퓨터를 재시작 하면 삭제되어 있을겁니다.
:: 프로그램의 작동 방식은 밑 코드를 반복실행하여 오류또는 빈틈을 만드는 방식이라 100% 성공률은 보장하지 않습니다.
:: 한번 시도는 해보시고 초기화를 시도해보세요.
:: rd /s /q "C:\windows/Downloaded Program Files\xkv3root"은 프로그램이 다운된 파일 자체를 지우는 코드로 파일 위치가 다르다면 ""안 파일 경로를 수정해주세요.
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

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
