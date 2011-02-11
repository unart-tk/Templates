#!/usr/bin/perl
#
# Copyright (C) 2010 Ben le Kuin
#
# A simple Perl template
#

use strict;
use warnings;

use Getopt::Long;

our($opt_h);
sub usage {
	print "Usage: ... \n";
	exit(1);
}
# Argument parsing
my $verbose;
GetOptions(
	'verbose'  => \$verbose,
) or usage();
usage() unless @ARGV;
usage() if $opt_h;
my (@files) = @ARGV;

foreach my $file (@files) {
	if (-e $file) {
			printf "File $file exists\n" if $verbose;
	}
	else {
			print "File $file doesn't exist\n";
	}
}

__END__

=head1 NAME

simplee - simple program

=head1 SYNOPSIS

    simple [OPTION]... FILE...

    -v, --verbose  use verbose mode
    --help         print this help message

Where I<FILE> is a file name.

Examples:

    simple /etc/passwd /dev/null

=head1 DESCRIPTION

This is as simple program.

=head1 USAGE 
=head1 REQUIRED ARGUMENTS

=head1 AUTHOR

Me.

=cut
#!/usr/bin/perl -w
# del
# Copyright (C) 2009-2010 Red Hat Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

use strict;
use warnings;

use Getopt::Long;
use Pod::Usage;

=encoding utf8

=head1 NAME

del - Trash on the commandline

=head1 SYNOPSIS

del crap.file

del old-directory

del foo*

=head1 DESCRIPTION

C<del> is a command line tool for doing non-destructive file deletions. Instead of 'rm -rf' it moves a 'to-be-deleted' file into a ~/trash.

=head1 OPTIONS

=over 4

=cut

my $help;

=item B<--help>

Display help


=back

=cut

GetOptions("help|h" => \$help);
pod2usage (1) if $help;
pod2usage ("del: Wrong file/dir name given") unless @ARGV >= 1;


