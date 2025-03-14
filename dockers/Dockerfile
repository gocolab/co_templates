FROM mcr.microsoft.com/windows/servercore:ltsc2019

# PowerShell 사용
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

# 필요한 구성요소 설치
RUN Install-WindowsFeature -Name Server-Gui-Mgmt-Infra

# .NET Framework 설치
RUN Install-WindowsFeature -Name NET-Framework-45-Core

# Python 설치 (32비트 버전)
RUN Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.8.10/python-3.8.10.exe' -OutFile 'python.exe' ; \
    Start-Process python.exe -ArgumentList '/quiet', 'InstallAllUsers=1', 'PrependPath=1' -Wait ; \
    Remove-Item -Force python.exe

# 필요한 Python 패키지 설치
RUN pip install pywin32 pyqt5

# 키움 Open API+ 설치 파일 복사 및 설치
COPY KiwoomOpenAPI.exe C:/KiwoomOpenAPI.exe
RUN Start-Process C:/KiwoomOpenAPI.exe -ArgumentList '/S' -Wait

# 작업 디렉토리 설정
WORKDIR C:/apps

# 애플리케이션 코드 복사
COPY apps/ .

# 진입점 스크립트 실행
CMD ["python", "main.py"]