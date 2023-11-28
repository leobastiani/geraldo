@ECHO OFF

if not exist Sons (
	mkdir Sons
)


set formatoDeArquivos=*.mp4 *.avi *.mpg



for %%f in (%formatoDeArquivos%) do (

	if not exist "Sons\%%~nf.mp3" (
		ffmpeg -i "%%f" -vn "Sons\%%~nf.mp3"
	)

)


call beep