@echo off
echo You have ran the OOBE Skipper Install Finalizer. This will add an admin user and skip the OOBE with registry edits.
set /p name="What is your account's name going to be?"
echo OOBE Skipper Install Finalizer is creating your user...
net user /add %name%
net localgroup /add users %name%
net localgroup /add administrators %name%
echo OOBE Skipper Install Finalizer is editing the registry...
regedit /s D:\OOBESkipper\registry\registrymodule2.reg
echo OOBE Skipper Install Finalizer has finished, exiting command prompt... You will boot to Windows soon.
exit 0
