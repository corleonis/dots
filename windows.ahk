; Tyler's default script

; Broke the arrow keys on my keyboard.
^Home::
Send, {Up}
return
^End::
Send, {Down}
return
^Del::
Send, {Left}
return
^PgDn::
Send, {Right}
return
^PgUp::
Send, {Enter}
return


; Common expansions
::t2t::tyler@tylermolamphy.com
::s2t::spam@tylermolamphy.com
::m2m::molamphy@me.com
::t2m::tyler@molamphy.net
::zzn1::Tyler Molamphy
::zzn2::Tyler "TJ" Molamphy

; Git
::g2g::git@github.com:tylermolamphy
::,,ga::git add 
::,,gc::git commit -m 
::,,gv::git commit{Enter}
::,,gp::git push origin master
::,,gu::git pull origin master
::,,g,cl::git clone git@github.com:tylermolamphy/

; Web
::,,d::http://www.duckduckgo.com/?q=
::,,r::http://www.reddit.com/r


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
^F12:: Run, %windir%\system32\Ribbons.scr /s 
return


; Ctrl Alt Bksp and walk away
^!BackSpace::
Sleep 1000
Run, "C:\Program Files (x86)\KTimer\Launcher.exe"
Sleep 8000
Run, %windir%\system32\Mystify.scr /s 
return

; Reload on Alt 0
!0::
{
TrayTip, AutoHotkey, Reloading default script...
Sleep 1500
Reload
}


