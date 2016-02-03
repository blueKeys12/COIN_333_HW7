sub findMinIndicies {
my $min = $_[0];
my @list;
	for($i = 0; $i<=$#_; $i++){
		if($_[$i] < $min){
		$min = $_[$i];
		@list = $i;
		}
		elsif ($_[$i]==$min){
		push @list, $i;
		}
	}
 return @list;
}

#test
@check = (1,2,3,4,-1);
print findMinIndicies(@check), "\n";
@check = (-1, 2,-1,-1);
print findMinIndicies(@check), "\n";
