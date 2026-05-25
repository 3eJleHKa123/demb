$folder="$env:LOCALAPPDATA\SysAdminCheat"
New-Item -ItemType Directory -Force -Path $folder | Out-Null
$url="https://github.com/USERNAME/dem/releases/latest/download/SysAdminCheat.exe"
$out="$folder\SysAdminCheat.exe"
Invoke-WebRequest -Uri $url -OutFile $out
Start-Process $out