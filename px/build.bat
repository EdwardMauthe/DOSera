tasm a.asm
@if ERRORLEVEL 1 goto END
tlink /t a.obj
:END
