# This script opens all TextGrids from a folder named "tg" in Praat 
# and exports them as xwave files (.lab) with the same names as the TextGrids.


Create Strings as file list... fileList tg/*.TextGrid

x = Get number of strings
for i to x
	fileName$ = Get string: i	
	Read from file: "tg/" + fileName$
	Extract tier... 1
	fileName$ = replace_regex$(fileName$, "\.TextGrid", "", 0)
	Save as Xwaves label file... 'fileName$'.lab
	Remove
	select Strings fileList
endfor

select all
Remove