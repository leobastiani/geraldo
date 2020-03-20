@ECHO OFF

IF %0 == "%~0" (
	rem estou no executar
	start "" mstsc /v:geraldo-pc
	goto:eof
)

rem estou na linha de comando
psexec \\Geraldo-PC -u Computador -p geraldo cmd