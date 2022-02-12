set os_ver to do shell script "sw_vers -productVersion | cut -d '.' -f1-2"

tell application "System Preferences"
	launch
	reveal anchor "Seeing_ColorFilters" of pane "Accessibility"
end tell

tell application "System Events"
	tell application process "System Preferences"
		set frontmost to true
		delay 1
		tell window "Accessibility"
			repeat until exists checkbox "Enable Color Filters" of tab group 1 of group 1
				delay 0.01
			end repeat
			click first checkbox of tab group 1 of group 1
		end tell
	end tell
end tell
tell application "System Preferences" to if it is running then quit
