WinWait, D:\cygwin\usr\local\bin\mosh-jgross-transparent-rooster.sh, 
IfWinNotActive, D:\cygwin\usr\local\bin\mosh-jgross-transparent-rooster.sh, , WinActivate, D:\cygwin\usr\local\bin\mosh-jgross-transparent-rooster.sh, 
WinWaitActive, D:\cygwin\usr\local\bin\mosh-jgross-transparent-rooster.sh, 
Sleep, 100
Send, rlwrap{SPACE}sh{ENTER}
Send, cd{SPACE}$HOME/Documents/repos/fiat-crypto{ENTER}clear{ENTER}
Sleep, 1000
Send, src/ExtractionOCaml/unsaturated_solinas{SPACE}curve25519{SPACE}64{SPACE}5{SPACE}2{SHIFTDOWN}6{SHIFTUP}255-19{SPACE}|{SPACE}less
Sleep, 500
Send, {ENTER}
Sleep, 1000
; src/ExtractionOCaml/unsaturated_solinas curve25519 64 5 2^255-19 | fold -w $(tput cols) | wc -l
; echo $(($(src/ExtractionOCaml/unsaturated_solinas curve25519 64 5 2^255-19 | fold -w $COLUMNS | wc -l) - $(tput lines)))
Loop, 913
{
  Send, {DOWN}
;  Sleep, 50
}
Sleep, 1000
Send, q
Sleep, 500
Send, {UP}{BACKSPACE}{BACKSPACE}{BACKSPACE}{BACKSPACE}{BACKSPACE}{BACKSPACE}{BACKSPACE}"{HOME}bash -c "time{SPACE}
Sleep, 500
Send, {ENTER}
Sleep, 3000
Send, {CTRLDOWN}d{CTRLUP}
