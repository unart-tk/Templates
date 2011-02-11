#!/bin/sh
# copyright (c) [:VIM_EVAL:]strftime('%Y')[:END_EVAL:] [:VIM_EVAL:]authoremail[:END_EVAL:]
# ./[:VIM_EVAL:]expand("%:t")[:END_EVAL:] --help
# 
purpose=''
function help() {
	echo "$purpose
	Usage:./$(basename $0) [options] file(s)
	Options: --help | -h		show help"
}

function main() {
	local arg=$1
	if [ -f $arg ];then
		echo "filename: $arg"
	else
		echo "string: $arg"
	fi
}

# command line arguments
while [ $# -gt 0 ]; do  
  case "$1" in
	-h|--help) help;exit 1;;
	-*|--*) help;exit 1;;
	*) break;;
  esac
  shift     
done

# process program input as 
# files (pipe or args) or as string
isstring=false
if [ "$( tty )" == 'not a tty' ] # cmd | prog
then
	for arg in $(cat $@);do
		main "$arg"
	done
else                     # prog "args"
	if [ $# != 0 ];then
		for file in $@;do
		if [ -f $file ];then
			main "$file"
		else
			isstring=true
		fi
		done
	fi
fi

if [ $isstring == true ];then
	main "$@"
fi

