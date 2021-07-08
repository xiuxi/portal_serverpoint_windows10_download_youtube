set filename=%~nx1
cd /d %0\..
cd autosub_app
autosub_app.exe -S zh-CN -D zh-CN %1
cd ..
pause
