#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("$FindBin::Bin/bootstrap.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# General Public License or the Perl Artistic License.

compile (
	 fails=>$Last_Self->{v3},
	 expect=>
'%Error: t/t_var_bad_rsvd.v:\d+: Unsupported: C\+\+ common word: bool
%Error: t/t_var_bad_rsvd.v:\d+: Unsupported: C\+\+ reserved word: switch
%Error: Exiting due to.*',
	 );

ok(1);
1;
