; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#ifndef VERSION
  #define VERSION "0.0.0"
#endif
#ifndef ONLY_64_BIT
  #define ONLY_64_BIT "x64"
#endif


#define MyAppName "OpenShot Video Editor"
#define MyAppShortName "OpenShot"
#define MyAppProjectFileDesc "OpenShot Project File"
#define MyAppPublisher "OpenShot Studios, LLC"
#define MyPublisherURL "https://www.openshot.org/"
#define MySupportURL "https://www.reddit.com/r/OpenShot/"
#define MyAppExeName "launch.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4BB0DCDC-BC24-49EC-8937-72956C33A470}
AppName={#MyAppName}
AppVersion={#VERSION}
VersionInfoVersion={#VERSION}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyPublisherURL}
AppSupportURL={#MySupportURL}
AppCopyright=Copyright (c) 2008-2019 {#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=..\COPYING
OutputBaseFilename=OpenShot
ArchitecturesInstallIn64BitMode={#ONLY_64_BIT}
ArchitecturesAllowed={#ONLY_64_BIT}
ChangesAssociations=yes
ChangesEnvironment=yes
Compression=lzma
SolidCompression=yes
WizardSmallImageFile=installer-logo.bmp
SetupIconFile=..\xdg\openshot-qt.ico
UninstallDisplayIcon={app}\{#MyAppExeName}
SignedUninstaller=yes
SignedUninstallerDir=..\build\

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "afrikaans"; MessagesFile: "compiler:Languages\Afrikaans.isl"
Name: "albanian"; MessagesFile: "compiler:Languages\Albanian.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.islu"
Name: "basque"; MessagesFile: "compiler:Languages\Basque.isl"
Name: "belarusian"; MessagesFile: "compiler:Languages\Belarusian.isl"
Name: "bengali"; MessagesFile: "compiler:Languages\Bengali.islu"
Name: "bosnian"; MessagesFile: "compiler:Languages\Bosnian.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "bulgarian"; MessagesFile: "compiler:Languages\Bulgarian.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "englishbritish"; MessagesFile: "compiler:Languages\EnglishBritish.isl"
Name: "esperanto"; MessagesFile: "compiler:Languages\Esperanto.isl"
Name: "estonian"; MessagesFile: "compiler:Languages\Estonian.isl"
Name: "farsi"; MessagesFile: "compiler:Languages\Farsi.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hindi"; MessagesFile: "compiler:Languages\Hindi.islu"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "indonesian"; MessagesFile: "compiler:Languages\Indonesian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "montenegrian"; MessagesFile: "compiler:Languages\Montenegrian.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "romanian"; MessagesFile: "compiler:Languages\Romanian.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "sinhala"; MessagesFile: "compiler:Languages\Sinhala.islu"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "thai"; MessagesFile: "compiler:Languages\Thai.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"
Name: "uyghur"; MessagesFile: "compiler:Languages\Uyghur.islu"
Name: "uzbek"; MessagesFile: "compiler:Languages\Uzbek.isl"
Name: "valencian"; MessagesFile: "compiler:Languages\Valencian.isl"
Name: "vietnamese"; MessagesFile: "compiler:Languages\Vietnamese.islu"
;;;
;;; XXX: The following language files are for InnoSetup 6.0, and may (or may
;;;      not) cause problems when used with 5.5.x.
Name: "arabic"; MessagesFile: "compiler:Languages\Arabic.isl"
Name: "chinesesimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"
Name: "chinesetraditional"; MessagesFile: "compiler:Languages\ChineseTraditional.isl"
Name: "croatian"; MessagesFile: "compiler:Languages\Croatian.isl"
Name: "korean"; MessagesFile: "compiler:Languages\Korean.isl"
Name: "lithuanian"; MessagesFile: "compiler:Languages\Lithuanian.isl"
;;;
;;; Icelandic and Slovak are officially-supported languages in InnoSetup 6.0,
;;; so if the compiler is upgraded they should be preinstalled.
Name: "icelandic"; MessagesFile: "compiler:Languages\Icelandic.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "fileassoc"; Description: "{cm:AssocFileExtension,{#MyAppName},.osp"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checked
Name: "firewall"; Description: "Add an exception to the Windows Firewall"; GroupDescription: "{cm:AdditionalIcons}";

[InstallDelete]
; Remove previous installed versions of OpenShot
Type: filesandordirs; Name: "{app}\*"
Type: dirifempty; Name: "{app}\*"
Type: files; Name: "{group}\OpenShot Video Editor"; BeforeInstall: DeleteInvalidFiles

[Registry]
; Remove previously installed registry keys (no longer needed)
Root: HKLM; Subkey: "System\CurrentControlSet\Control\Session Manager\Environment"; ValueName:"QT_PLUGIN_PATH"; ValueType: none; Flags: deletevalue;
Root: HKLM; Subkey: "System\CurrentControlSet\Control\Session Manager\Environment"; ValueName:"MAGICK_CONFIGURE_PATH"; ValueType: none; Flags: deletevalue;

; Associate .osp files with the installed application. Uninstaller will clean them up, when run.

; Filename extension .osp
Root: HKLM; Subkey: "Software\Classes\.osp"; ValueType: string; ValueName: ""; ValueData: "OpenShotProject"; Flags: uninsdeletevalue; Tasks: fileassoc
; .osp file description, "OpenShot Project File" (OpenShotProject, internally)
Root: HKLM; Subkey: "Software\Classes\OpenShotProject"; ValueType: string; ValueName: ""; ValueData: "{#MyAppProjectFileDesc}"; Flags: uninsdeletekey; Tasks: fileassoc
; Launcher association for data files of type OpenShotProject
Root: HKLM; Subkey: "Software\Classes\OpenShotProject\shell\open\command"; ValueType: string;  ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Tasks: fileassoc
;
; NOT setting an icon for project files seems best, as we don't currently have one,
; and if omitted Windows seems to generate a perfectly acceptable default.
; (The OpenShot logo on a sheet of paper.) So, the line below is commented out.
;
; Root: HKLM; Subkey: "Software\Classes\OpenShotProject\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"

[Files]
; Add all frozen files from cx_Freeze build
Source: "..\build\exe.mingw-3.7\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall add rule name=""{#MyAppName}"" program=""{app}\{#MyAppExeName}"" dir=in action=allow enable=yes"; Flags: runhidden; Tasks: firewall;
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "{sys}\netsh.exe"; Parameters: "advfirewall firewall delete rule name=""{#MyAppName}"""; Flags: runhidden; Tasks: firewall;

[Code]
procedure DeleteInvalidFiles();
begin
  if (FileExists (ExpandConstant('{sys}\zlib1.dll'))) then
  begin
    RenameFile(ExpandConstant('{sys}\zlib1.dll'), ExpandConstant('{sys}\zlib1.DELETE'));
  end;
  if (FileExists (ExpandConstant('{win}\system32\zlib1.dll'))) then
  begin
    RenameFile(ExpandConstant('{win}\system32\zlib1.dll'), ExpandConstant('{win}\system32\zlib1.DELETE'));
  end;
  if (FileExists (ExpandConstant('{syswow64}\zlib1.dll'))) then
  begin
    RenameFile(ExpandConstant('{syswow64}\zlib1.dll'), ExpandConstant('{syswow64}\zlib1.DELETE'));
  end;
end;
