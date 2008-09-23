#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("$FindBin::Bin/bootstrap.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# General Public License or the Perl Artistic License.

compile (
	 );

execute (
	 fails=>$Last_Self->{v3},
	 expect=>
'%Error: t/t_sys_readmem_bad_end.mem:\d+: \$readmem file ended before specified ending-address',
     );

ok(1);
1;
