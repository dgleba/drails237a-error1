:Prepare date and temp folders - http://serverfault.com/questions/147515/need-leading-zero-for-batch-script-using-time-variable
set timea=%TIME: =0%
set ymd=%date:~12,2%%date:~4,2%%date:~7,2%&set dhms=%date:~12,2%%date:~4,2%%date:~7,2%_%timea:~0,2%%timea:~3,2%%timea:~6,2%
c: & md c:\temp\log\"%dhms%"  & cd c:\temp\log\"%dhms%"
mkdir c:\temp\rblogs


rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ start here..
set prjfold=drails237a

set srcdir=C:\n\Dropbox\csd\dg2\knowledge-csd-dg\computer\rails-know\%prjfold%

set vdest=\\10.4.15.100\html\rails\%prjfold%

set vdest2=\\v206b1\html\rails\%prjfold%

set pdata=\\PMDSDATA\p2\xampp\htdocs\rails\%prjfold%

set pdata3=\\pmdsdata3\html\rails\%prjfold%

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ %prjfold%


robocopy %srcdir% %vdest2%  /e  /COPY:DT /xd tmp vendor /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\drail-237a-%dhms%-%random%"
robocopy %vdest2%  %srcdir% /e  /COPY:DT /xd tmp vendor /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\drail-237a-2-%dhms%-%random%"
  
robocopy %srcdir% %vdest%  /e  /COPY:DT /xd tmp vendor /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\drail-237a-%dhms%-%random%"
robocopy %vdest%  %srcdir% /e  /COPY:DT /xd tmp vendor /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\drail-237a-2-%dhms%-%random%"

robocopy %srcdir% %pdata%  /e  /COPY:DT /xd tmp vendor /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\drail-237a-3-%dhms%-%random%"
robocopy %pdata%  %srcdir% /e  /COPY:DT /xd tmp vendor /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\drail-237a-4-%dhms%-%random%"

robocopy %srcdir% %pdata3%  /e  /COPY:DT /xd tmp vendor /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\drail-237a-5-%dhms%-%random%"
robocopy %pdata3% %srcdir%  /e  /COPY:DT /xd tmp vendor /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\drail-237a-6-%dhms%-%random%"


set delfile1=rb-copyto-v206.bat
del %srcdir%\%delfile1%
del  %vdest%\%delfile1%
del  %pdata%\%delfile1%
del %pdata3%\%delfile1%


rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ %prjfold%


goto end
timeout 9999



robocopy \\pmdsdata3\html\python\cif207d  C:\n\Dropbox\csd\VCS-git\cif207d  /e  /COPY:DT /xd .git templates_c testnobackup /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\cif207d2-%dhms%-%random%"

xcopy C:\n\Dropbox\csd\VCS-git\cif207d \\PMDS-DATA\p2\xampp\htdocs\python\cif207d   /s/e/d/h/i/f/c/k/y 
robocopy C:\n\Dropbox\csd\VCS-git\cif207d \\PMDS-DATA\p2\xampp\htdocs\python\cif207d  /l  /COPY:DT /xd  templates_c /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\cif207d3-%dhms%-%random%"


:robocopy C:\n\Dropbox\csd\VCS-git\cif207d \\PMDS-DATA\p2\xampp\htdocs\python\cif207d   /e  /COPY:DT /xd .git templates_c testnobackup /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\cif207d-%dhms%-%random%"

robocopy C:\n\Dropbox\csd\VCS-git\cif207d \\v206b2\html\python\cif207d   /e  /COPY:DT /xd .git templates_c testnobackup /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\cif207d4-%dhms%-%random%"

robocopy  \\v206b1\html\python\cif207d   C:\n\Dropbox\csd\VCS-git\cif207d /e  /COPY:DT /xd .git templates_c testnobackup /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\cif207d5-%dhms%-%random%"
robocopy  \\v206b1\html\python\cif207d   C:\n\Dropbox\csd\VCS-git\cif207d /e  /COPY:DT /xd .git templates_c testnobackup /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:\temp\rblogs\cif207d6-%dhms%-%random%"



:end
pause
