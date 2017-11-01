@echo off

adb -s 981da11d shell sh /sdcard/fsmount
adb -s 981da11d shell sh /sdcard/webmin
adb -s 981da11d forward tcp:10000 tcp:10000

explorer.exe https://localhost:10000
