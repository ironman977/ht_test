#!/usr/bin/perl

my %data = ();


use Time::HiRes qw(time);
my $start = time();

while (<>)
{
	m/(\d+) (\d+)/;
	my $jid = $1;
	my $ops = $2;
	$data{$jid}=$ops;
        my $elapsed = time() - $start;
        if ($elapsed >= 1.0) {
		my $sum = 0;
		my $jobs = 0;
		foreach my $k (keys %data) {
			$sum += $data{$k};
			$jobs++;
		}
		printf "Jobs $jobs Troughput %.2f Mop/s\n",($sum/1e6);
		$start = time();
	}
}
