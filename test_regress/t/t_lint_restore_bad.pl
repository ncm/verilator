#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("$FindBin::Bin/bootstrap.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003-2008 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# General Public License or the Perl Artistic License.

compile (
	 v_flags2 => ["--lint-only"],
	 fails=>1,
	 expect=>
'.*%Warning-WIDTH: t/t_lint_restore_bad.v:\d+: Operator ASSIGN expects 5 bits on the Assign RHS, but Assign RHS\'s CONST generates 64 bits.
%Warning-WIDTH: Use .*
%Error: Exiting due to.*',
	 ) if $Last_Self->{v3};

ok(1);
1;
