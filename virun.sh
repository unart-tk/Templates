#!/bin/sh
# copyright (c) 2010 ben@lekin.org
# ./virun.sh --help
# 
set -u

USAGE='[-a|--all] [-f|--file <filename>] input'

input=

die(){
	echo >&2 "$@"
	exit 1
}
#screen -S 'sess' -p 0 -X stuff "./$1"
#./generate.sh
./hello.py > outp.txt
ls
echo 'vimYo = content.window.pageYOffset; vimXo = content.window.pageXOffset; BrowserReload(); content.window.scrollTo(vimXo,vimYo); repl.quit();'  |  telnet localhost 4242 2>&1 > /dev/null
echo ""
