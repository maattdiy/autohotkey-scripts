# Development setup

Run cmd as admin and then the following commands:

**Install [Chocolatey](https://chocolatey.org/)**

`@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"`

**Install development tools** (Notepad++, AutoHotKey, VS Code and plugins)

`@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "choco feature enable -n allowGlobalConfirmation;choco install notepadplusplus.install;choco install autohotkey.install;choco install vscode;choco install vscode-icons;choco install vscode-autohotkey;"`
  
# Inspiration

* [Awesome AutoHotkey](https://github.com/ahkscript/awesome-AutoHotkey)
* [AutoHotkey topic search](https://github.com/topics/autohotkey?l=autohotkey&o=desc&s=stars)
* [AutoHotkey trending](https://github.com/trending/autohotkey)
* [denolfe](https://github.com/denolfe/AutoHotkey)
* [TaranVH](https://github.com/TaranVH/2nd-keyboard)
