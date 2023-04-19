# Mod installer
$jarFile = dir *.jar | Split-Path -leaf
java -jar "$jarFile"

# get cwd
$curDir = Get-Location

# copy mods
Remove-Item -LiteralPath "$env:HOMEPATH\AppData\Roaming\.minecraft\mods" -Force -Recurse
Copy-Item -Path $curDir\mods -Recurse -Destination $env:HOMEPATH\AppData\Roaming\.minecraft\mods -Container

# copy config
Remove-Item -LiteralPath "$env:HOMEPATH\AppData\Roaming\.minecraft\config" -Force -Recurse
Copy-Item -Path $curDir\config -Recurse -Destination $env:HOMEPATH\AppData\Roaming\.minecraft\config -Container
