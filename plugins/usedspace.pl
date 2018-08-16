#!/usr/bin/perl
use strict;
use warnings;

my $used_space = int(rand(100));

chomp($used_space);
if ($used_space lt '85%') { print "OK - $used_space of disk space used."; exit(0);      }
if ($used_space eq '85%') { print "WARNING - $used_space of disk space used."; exit(1);      }
if ($used_space gt '85%') { print "CRITICAL - $used_space of disk space used."; exit(2); }
default { print "UNKNOWN - $used_space of disk space used."; exit(3); }
