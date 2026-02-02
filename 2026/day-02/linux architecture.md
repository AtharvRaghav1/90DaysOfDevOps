Procees States 
In Linux, every process has an internal kernel state that describes:
What the process is doing at this exact moment.It display the selection of a active process. eg. ps, top, and htop etc.
running - process is currently executing on cpu.
Sleeping - When Process is not using cpu. Kernal keep on wait because it is waiting for an event and available when it needed.
Zombie :  A process that has finished execution, and still has an entry in the process table because its parent has not collected its exit status.
Linux Architecture:- 
Application : In this layer programs are run i.e user level 
Shell : 
Kernal : Heart of linux and control everything and drivers run in kernal .
Hardware : Last layer of architecture. Kernal directly controls hardware. eg CPU, Network cards, RAM etc.
5 Commands :
ls - to list all the directories
pwd - To display present working directories
Mkdir - to make a new directories
cat - show file content
echo - print text
df -h - Disk usase
df -sh - directory size
