Invoke-WebRequest 'https://s3browser.com/download/s3browser-10-8-1.exe' -OutFile $env:TEMP\s3browser-10-8-1.exe
cd C:\Users\moham\AppData\Local\Temp
Start-Process 'C:\Users\moham\AppData\Local\Temp\s3browser-10-8-1.exe' 