@people1 = qw (Dustin Holden Heather Meghan Robert Alex);
#@people2 = qw (Rob Al Michael Rober John Kara);
@people2 = qw (Robert Alex Micheal Robert John Alex Kara);

@duplicates;
foreach $name (@people1){
	$hash1{$name} =1;
}

foreach $name (@people2){
	if($hash1{$name}){
		$hash1{$name}++;
		push @duplicates, $name;
	}
	else{
		$hash1{$name} =1;
	}
}



$max=0;
$min= @people1;

foreach $key (keys %hash1){
	if($hash1{$key} > 1){
		print "$key ";
	} #prints duplicates
	
		if($hash1{$key}> $max){
		$max = $hash1{$key};
		@Most = ("$key ");
	}  
	elsif($hash1{$key}==$max){
		push @Most, "$key ";
	}   #finding the most frequent appearance(s), stores them in @Most
	
	if($hash1{$key} <$min){
		$min = $hash1{$key};
		@min = ("$key ");
	}
	elsif($hash1{$key} == $min){
		push @min, "$key ";
	} #finding the least frequent appearance(s), stores them in @min
	
}
print "\n";

print 'The most frequent name(s) are: ', "@Most occuring $max times \n";
print 'The least frequent name(s) are: ', "@min occuring $min times \n";













