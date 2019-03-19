![](https://img.shields.io/github/last-commit/maattdiy/autohotkey-scripts.svg?style=flat)
![](https://img.shields.io/github/languages/code-size/maattdiy/autohotkey-scripts.svg?style=flat)

My AutoHotKey scripts for automation, hotstrings and others productivity hacks.  
See also: [win-scripts](https://github.com/maattdiy/win-scripts)

## Development setup

Run cmd as admin (_try Win+X A or Start > cmd and Ctrl+Shift+Enter_) and then the following commands:

**Install [Chocolatey](https://chocolatey.org/)**
  
`@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"`
  
**Install development tools** (Notepad++, AutoHotKey, VS Code and plugins)

`@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "choco feature enable -n allowGlobalConfirmation;choco install notepadplusplus.install;choco install autohotkey.install;choco install vscode;choco install vscode-icons;choco install vscode-autohotkey;"`

## Configuration
* Create shortcut of Startup.ahk in _shell:startup_
* Run Startup.ahk
* Caps+A to edit files

## Inspiration

* [Awesome AutoHotkey](https://github.com/ahkscript/awesome-AutoHotkey)
* [AutoHotkey topic search](https://github.com/topics/autohotkey?l=autohotkey&o=desc&s=stars)
* [AutoHotkey trending](https://github.com/trending/autohotkey)
* [denolfe](https://github.com/denolfe/AutoHotkey)
* [TaranVH](https://github.com/TaranVH/2nd-keyboard)
