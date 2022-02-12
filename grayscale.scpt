# System PreferencesのAccessibilityを開きます。
tell application "System Preferences"
	launch
	reveal anchor "Seeing_ColorFilters" of pane "Accessibility"
end tell

tell application "System Events"
	tell application process "System Preferences"
		delay 1
		tell window "Accessibility"
			# 設定画面が出るまで待ちます。
			repeat until exists checkbox "Enable Color Filters" of tab group 1 of group 1
				delay 0.01
			end repeat
			# グレースケールをon/offします。
			click first checkbox of tab group 1 of group 1
		end tell
	end tell
end tell

# windowを閉じます。
tell application "System Preferences" to if it is running then quit
