@echo off

    if exist "Haloo.obj" del "Haloo.obj"
    if exist "Haloo.exe" del "Haloo.exe"

    \masm32\bin\ml /c /coff "Haloo.asm"
    if errorlevel 1 goto errasm

    \masm32\bin\PoLink /SUBSYSTEM:CONSOLE "Haloo.obj"
    if errorlevel 1 goto errlink
    dir "Haloo.*"
    goto TheEnd

  :errlink
    echo _
    echo Link error
    goto TheEnd

  :errasm
    echo _
    echo Assembly Error
    goto TheEnd
    
  :TheEnd

pause
