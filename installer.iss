# Inno Setup installer definition
#define MyAppName "Android Zero-Click Security Research Lab"
#define MyAppVersion "1.0.0"
[Setup]
AppId={{A4A840AA-962E-46BA-9760-BE82D5A94608}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
DefaultDirName={autopf}\AndroidSecurityLab
DefaultGroupName=Android Security Lab
OutputDir=installer
OutputBaseFilename=AndroidSecurityLab_Setup
Compression=lzma
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=lowest
[Files]
Source: "dist\AndroidSecurityLab.exe"; DestDir: "{app}"; Flags: ignoreversion
[Icons]
Name: "{group}\Android Security Lab"; Filename: "{app}\AndroidSecurityLab.exe"
Name: "{autodesktop}\Android Security Lab"; Filename: "{app}\AndroidSecurityLab.exe"; Tasks: desktopicon
[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional icons:"
[Run]
Filename: "{app}\AndroidSecurityLab.exe"; Description: "Launch Android Security Lab"; Flags: nowait postinstall skipifsilent
