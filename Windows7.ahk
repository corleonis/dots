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

; Reload on Alt 0
!0::
{
TrayTip, AutoHotkey, Reloading default script...
Sleep 1500
Reload
}