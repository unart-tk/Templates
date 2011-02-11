#!/bin/sh
# copyright (c) 2010 ben@lekin.org
# ./bashtpl.sh --help
# 
set -u

USAGE='[-a|--all] [-f|--file <filename>] input'

input=

die(){
	echo >&2 "$@"
	exit 1
}
usage(){
	die "Usage: $0 $USAGE"
}
case "$#" in 0) usage ;; esac

file= msg=
while [ $# -gt 0 ]; do  
  case "$1" in
	-a|--all) echo "all: yes";;
	-f|--file)
		shift
		if test "$#" = "0"; then
			die "error: option -f needs an argument"
		else 
			file="$1"
		fi
	;;
	-h|--help) usage;exit 1;;
	-*|--*) help;exit 1;;
	*) break;;
  esac
  shift     
done
if [ -n "$file" ];then
	echo "file: $file"
fi
if [ -n "$msg" ];then
	echo "msg: $msg"
fi

if [ "$#" == 1 ];then
	echo "input: $1"
fi

