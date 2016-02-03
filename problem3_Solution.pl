sub search{
	my $val = $_[0];
	my @arr = @_;
	shift @arr, 1;
	foreach $i (@arr){
		if ($val == $i){
		return 1;
		}
	}
	return 0;
}


#test
@check = (1, 2, 3, 4, 5);
print search(3, @check);
print search(6, @check);
