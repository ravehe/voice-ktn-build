### This script turns a labeled TextGrid into a YAML file.

#### ravehe and ioonaa, July 2016


form Details
	comment What's the the name of the input file?
	sentence infileName voice-ktn-chrono.TextGrid
	comment What's the name of the output file?
	sentence outfileName voice-ktn.yaml
endform

ignore$ = "x"
space$ = " "
dspace$ = "  "

Read from file: infileName$

numInt = Get number of intervals: 1

writeFileLine: outfileName$, "stimuli:"

for interval to numInt 
	label$ = Get label of interval: 1, interval
	
	if label$ <> ignore$ and label$ <> "" and label$ <> "rep"
		text$ = Get label of interval: 2, interval
		start = Get starting point: 1, interval
		end = Get end point: 1, interval
		
		output$ = space$ + "-" + space$ + "label: " + label$ + newline$
		output$ = output$ + dspace$ + " text: " + text$ + newline$
		output$ = output$ + dspace$ + " start: " + string$(start) + newline$
		output$ = output$ + dspace$ + " end: " + string$(end) + newline$ + newline$
		appendFileLine: outfileName$, output$
	endif
	
endfor
