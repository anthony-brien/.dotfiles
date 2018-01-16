;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
pwd=cd
clear=cls
history=cat %CMDER_ROOT%\config\.history
unalias=alias /d $1
ls=ls --show-control-chars --group -F --color $*  
cdpl=f: $t cd f:\anvil-playground\$1
cdmain=d: $t cd d:\main\$1
vs2017="C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe" $*
vs2015="C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe" $*

