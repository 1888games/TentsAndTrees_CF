dasm\bin\DOS\dasm main.asm -f3 -obin/game.bin
cd ..\..\mess
messd channelf -cart C:\tents/bin/game.bin -w -r 720x720 -debug