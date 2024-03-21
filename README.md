# nvidia-fedora-problems
files to run when nvidia inevitably refuses to load properly (on fedora) 
## The main issue seems to be ``` NVIDIA kernel module missing. Falling back to nouveau ```
When this happens, download test1.sh and run it by doing `bash test1.sh` in the same folder as you put the file in. This usally fixes the problem by simple uninstalling the possibly offending parties, and reinstalling them. Just wait for the program to do its thing. It will take about five minutes to complete. 

The code for this is entirely ~~stolen~~ *borrowed* from https://discussion.fedoraproject.org/t/fedora-37-nvidia-kernel-module-missing-falling-back-to-nouveau/71372/6
