#!/bin/bash
#
# Copyright (C) Ben le Kuin 2010
#
# Template for bash scripts
#

USAGE="\
The purpose of this script is to show how to write bash scripts
Usage: $0 [--mixed | --soft | --hard]  [<commit-ish>] [ [--] <paths>...]\
"
function die() {
	echo >&2 "$@"
	exit 1
}

function usage(){
   die "$USAGE"
}


all=false
save=false
message=""
while case "$#" in 0) break ;; esac
do
	case "$1" in
		-a|--all)
			all=true
			;;
		-s|--s|--sa|--sav|--save)
			save=true
			;;
 		-m)
			shift
			echo "s1: $1"
			if test "$#" = "0"; then
				echo "error: option -m needs an argument"
				exit 1;
			elif [[ $1 =~ ^-.* ]];then # prevent -m -k
				usage
			else
				message="$1"
				echo "mess: $message";
			fi
			;;
		-h|--help)
			usage
			;;

		-*)
			usage
			;;
        *)
			break
			;;
	esac
	shift
done

if $all; then
	echo "all true"
fi
if $save; then
	echo "save true"
fi

if [ "$message" != "" ]; then
	echo "mess $message"
fi
