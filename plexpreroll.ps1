#('\config\Preroll\' + (Get-ChildItem -Path \\192.168.1.150\appdata\binhex-plexpass\Preroll\ -Name)) -join(';')
#plex preroll file name list generator - manually configured for now
#$path = Read-Host "Enter preroll local path"
#$plexpath = Read-Host "Enter plex relative preroll path"
foreach ($file in (Get-ChildItem -Path \\192.168.1.150\appdata\binhex-plexpass\Preroll\ -Name)) {
    [array]$list += ('/config/Preroll/' + $file)
}
$output = $list -join(';')
Write-Host $output