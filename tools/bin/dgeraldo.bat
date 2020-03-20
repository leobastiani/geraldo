@ECHO OFF

IF %0 == "%~0" (
	call hide me
	psexec \\Geraldo-PC -u Computador -p geraldo shutdown -s -t 0
	exit
)

rem estou na linha de comando
psexec \\Geraldo-PC -u Computador -p geraldo shutdown -s -t 0
