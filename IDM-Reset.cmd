for /f "tokens=*" %%A in ('reg query HKU ^| findstr /R /C:"HKEY_USERS\\S-1-5-21-.*_Classes$"') do (
    reg delete "%%A\WOW6432Node\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}" /f
)

taskkill /F /IM IDMan.exe
timeout /t 45 >nul
start "" "C:\Program Files (x86)\Internet Download Manager\IDMan.exe"
