# Bash-unp-tool
A simple bash script to unpack compressed files. 
Also includes foolproof install program.

**REMINDER**
This is my first project on github :) 
The development is completed. 
There won't be any change made unless bugs are reported.



**Way to use**
1. Change to main directory.
2. Run: 
``
sudo bash install.sh
``
in the terminal.
3. Extract files using: 
``
unp <filename>
``

# Roadmap

**User Interface** 

[  ]More detailed messages (warning error); beautify terminal output 

**Support for Various Arguments** 

[ > ]`unp <filename> -o <path>` to put the extracted file to a certain directory; `unp <filename> -y -o <path>` to force create directory without asking

[  ]`unp <filename> -f <path>` unpack every extractable file in a folder and put them to another folder

[ > ]`unp <filename> -d` unpack then remove the compressed file 

[ > ]`unp <filename> -q` enable quiet mode which hide all terminal messages except errors

**Versatility** 

[  ]add support for .7z .rar and so on.
