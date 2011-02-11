#!/usr/bin/python

# Copyright (c) 2010 Ben Beikal

"""Welcomes the user with a friendly message

This script says hello to the user

"""

from optparse import OptionParser
import os
import stat
import sys

USAGE = "usage: %prog "

MSG = "Hello my friend"

def sayhello():
    print("hello")

def main():
    p = optparse.OptionParser(
        description='Unix toolbox in Python',
        prog='pyapp')
    p.add_option('--usage', '-u', action="store_true" , help='do something') 
    p.print_help()

if __name__ == '__main__':
    main()

