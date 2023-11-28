@ECHO OFF

if not exist Sons (
	echo Extraia o som antes
	goto:eof
)

if not exist Final (
	mkdir Final
)



set formatoDeArquivos=*.mp4 *.avi *.mpg



for %%f in (%formatoDeArquivos%) do (

	if exist "Sons\%%~nf.mp3" (
		if not exist "Final\%%f" (
			ffmpeg -i "%%f" -i "Sons\%%~nf.mp3" -map 0:0 -map 1:0 -vcodec copy -acodec copy "Final\%%f"
		)
	)

)


call beep