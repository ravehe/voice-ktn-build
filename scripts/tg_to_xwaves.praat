# This script opens all TextGrids from a folder named "tg" in Praat 
# and exports them as xwave files (.lab) with the same names as the TextGrids.


form Files
	comment What is the name of the folder containing the TextGrids?
	sentence folderIn tg
endform


Create Strings as file list... fileList 'folderIn$'/*.TextGrid

x = Get number of strings
for i to x
	fileName$ = Get string: i	
	Read from file: "'folderIn$'/'fileName$'"
	Extract tier... 1
	fileName$ = replace_regex$(fileName$, "\.TextGrid", "", 0)
	Save as Xwaves label file... 'fileName$'.lab
	Remove
	select Strings fileList
endfor

select all
Remove