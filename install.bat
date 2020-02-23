@echo off
echo Welcome! The Windows OOBE Skipper is an open-source script that will reformat your computer and install Windows 10 on it.
pause
if exist "batch-check-file.txt" (
      goto nocopy
) else (
      echo OOBE Skipper is copying files to the base of the D drive...
      copy * D:\
)
:nocopy
chdir D:\
echo OOBE Skipper is beginning Phase 1A - system partitioning...
rem Hand control over to partition.bat
D:\batch\phase1\partition.bat
