powershell -Command "Clear-RecycleBin -DriveLetter C -Force -ErrorAction SilentlyContinue"
timeout /t 60
Optimize-Volume -DriveLetter C -ReTrim -Verbose