run: main.exe
	main.exe

main.exe: tick_ms.dll
	gcc -I. main.c tick_ms.dll -o main.exe

dll: tick_ms.dll ;
tick_ms.dll: tick_ms.c
	gcc -fPIC -shared tick_ms.c -o $@

clean:
	-rm main.exe
	-rm *.dll
