; Tyler's default script

; Common expansions
::t2t::tyler@tylermolamphy.com
::s2t::spam@tylermolamphy.com
::m2m::molamphy@me.com
::t2m::tyler@molamphy.net
::zzn1::Tyler Molamphy
::zzn2::Tyler "TJ" Molamphy

; Git
::,,ga::git add 
::,,gc::git commit -m 
::,,gv::git commit{Enter}
::,,gp::git push origin master
::,,gu::git pull origin master
::,,g,cl::git clone git@github.com:tylermolamphy/

; Web
::,,d,::http://www.duckduckgo.com/?q=
::,,r::http://www.reddit.com/r/


; 30 second windows screenshots
+!3::
	{
		Send , {PrintScreen}
		Sleep 1000
		Run, mspaint
		Sleep 2000
		Send {Enter} 
		Sleep 1000
		WinActivate, Untitled - Paint
		Send , ^v
		Sleep 750
		Send , ^s
		Sleep 750
		Send, Screenshot
		Send, {Enter}
		Sleep 500
		Send , !{F4}
		TrayTip, AutoHotkey, Screenshot taken
		Sleep 2000
		TrayTip, OffScreenshotScreenshot
		
		return
	}

; Start screensaver on Ctrl F12
^F12:: Run, %windir%\system32\Mystify.scr /s 
return

; Reload on Alt 0
!0::
{
TrayTip, AutoHotkey, Reloading default script...
Sleep 1500
Reload
}


