#!/usr/bin/perl
use Time::HiRes qw(time);

$|=1;
my $start = time();
my $ops = 0;
my $jid = $ARGV[0] || '-';
my $todo = 3;
while ($todo) {
	my $elapsed = time() - $start;
	if ($elapsed >= 1.0) {
		printf "%s %.0f\n",$jid,($ops/$elapsed);
		$ops = 0;
#		$todo--;
		$start = time();
	}
		$ops++;
		my $uno = sin($ops)*sin($ops)+cos($ops)*cos($ops);
}

