Add-Type -AssemblyName System.IO.Compression.FileSystem
$WC = New-Object System.Net.WebClient
'================================================================='
'|     Welcome to GenisysPro install script for Windows          |'
'================================================================='
sleep 1
Try{
'Downloading GenisysPro from GitLab...'
$WC.DownloadFile("https://gitlab.com/GenisysPro/GenisysPro/builds/artifacts/master/download?job=phar",".\GenisysPro.zip")
'Extracting GenisysPro...'
[System.IO.Compression.ZipFile]::ExtractToDirectory(".\GenisysPro.zip", ".\")
'Deleting temporary files...'
rm GenisysPro.zip
'Done!'
''
'Downloading PHP binaries...'
$WC.DownloadFile("https://storage.googleapis.com/itx-technologies-141911.appspot.com/php_for_genisys%2Fphp_windows_x64_7.0.17.zip",".\php.zip")
'Extracting PHP binaries...'
[System.IO.Compression.ZipFile]::ExtractToDirectory(".\php.zip", ".\")
'Deleting temporary files...'
rm php.zip
rm start.cmd
'Done!'
''
'Downloading start-up scripts...'
$WC.DownloadFile("https://raw.githubusercontent.com/GenisysPro/GenisysPro/master/start.cmd",".\start.cmd")
$WC.DownloadFile("https://raw.githubusercontent.com/GenisysPro/GenisysPro/master/start.ps1",".\start.ps1")
'Done!'
''
if ([System.IntPtr]::Size -eq 4){
'Downloading Visual C++ Redistributable for Visual Studio 2015 for 32-bit OS...'
$WC.DownloadFile("https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x86.exe",".\vc_redist.exe")
}
else{
'Downloading Visual C++ Redistributable for Visual Studio 2015 for 64-bit OS...'
$WC.DownloadFile("https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x64.exe",".\vc_redist.exe")
}
'Visual C++ Redistributable for Visual Studio 2015 will be installed.'
'Please select "Yes" in the User Account Control dialog box.'
sleep 5
'Installing Visual C++ Redistributable for Visual Studio 2015...'
Start-Process .\vc_redist.exe -NoNewWindow -Wait -ArgumentList "/install /quiet"
'Deleting temporary files...'
rm vc_redist.exe
'Done!'
''
}
Catch{
'Something went wrong, please try again later.'
sleep 5
exit
}
'All done!'
'You can now start your server by running start.cmd or start.ps1.'

sleep 5
rm Windows-Installer.ps1
exit
