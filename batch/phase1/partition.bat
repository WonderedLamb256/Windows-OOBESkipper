set /p isUsingEFI="Are you using EFI? Type in Y or y for yes > "
if not defined isUsingEFI (
      echo ERROR: The variable isUsingEFI is undefined. Stop.
      exit 1
)
echo With great power comes great responsibility. Press Ctrl+C to exit or any key to continue to partitioning.
pause
echo OOBE Skipper is using diskpart to partition the disk...
if /i isUsingEFI == "Y" (
      diskpart D:\OOBESkipper\config\diskpart.txt
) else (
      diskpart D:\OOBESkipper\config\diskpart-legacy.txt
      rem The diskpart script diskpart-legacy.txt is a BIOS version of diskpart.txt.
)
echo OOBE Skipper is starting Phase 1B - Imaging...
D:\OOBESkipper\batch\phase1\image.bat
