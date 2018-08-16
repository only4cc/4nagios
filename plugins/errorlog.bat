@echo off
set LOG="C:\Program Files (x86)\check_mk\plugins\ERRORLOG.OUT"
del %LOG%
"C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\sqlcmd.exe"  -s "," -W -h-1  -H localhost  -d master -E -t 3 -Q"exec master.sys.xp_readerrorlog 0 ;"  >> %LOG%
C:\Perl\perl\bin\perl.exe "C:\Program Files (x86)\check_mk\plugins\check_err_log.pl" %LOG%