# ServicesChecker
Questo script come si intuisce dal nome va a controllare se i servizi necessari per un ss sono attivi.

# Comando per eseguire lo script:
CMD (admin):
```
powershell Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass && powershell Invoke-Expression (Invoke-RestMethod https://raw.githubusercontent.com/sandydll-bs/ServicesChecker/main/ServicesChecker.ps1)
