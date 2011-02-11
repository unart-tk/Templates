#!/usr/bin/env python

# ./scriptskeleton ./foo/

# Copyright (c) 2011 Ben at untar.org
# This is free software, licenced under GPL. See http://www.gnu.org/copyleft/gpl.txt

TITLE = "scriptskeleton - a template for python scripts"
DESCRIPTION = "Reads a list of files and generates a file listing in html. "

USAGE=('scriptskeleton', 'OPTIONS', 'dir')
OPT = []
OPT.append(('-f','--fun','','do nothing'))
OPT.append(('-t','--take','FILE','change it'))



import sys
import os

def proclines(file):
    print "hell"
    f = open(file,'r')
    for line in f.readlines():
        print line.strip()
    f.close()

def main (args):
    dir=args.dir
    print "dir: %s" % dir
    for i in os.listdir(dir):
        print "isf: %s" % i
        if os.path.isfile(i):
            print "isf"
            proclines(i)

if __name__=="__main__":
    import argparse

    if len(sys.argv) == 1:
        parser.print_help()
        sys.exit(1)

    parser = argparse.ArgumentParser(prog=USAGE[0], description = DESCRIPTION)

    for o in OPT:
        if o[2]:
            parser.add_argument(o[0],o[1],help=o[3])
        else:
            parser.add_argument(o[0],o[1],action='store_true',help=o[3])
        
    parser.add_argument(USAGE[2])
    args = parser.parse_args()

    sys.exit(main(parser.parse_args()))

