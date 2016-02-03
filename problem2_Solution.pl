@blah = qw (a b c d e f g h);
@arr = (1,2,3,4,5);

#a
splice @blah, 3, 1;

#b
push @blah, shift @blah;

#c
$blah[2]= "hello";

#d
splice @blah, 2, 1, "new", "again", 4.7;

#e
splice @blah, -1, 1;

#f
splice @blah, 0, 0, "hello", "goodbye";

#g
splice @blah, 7, 0, @arr;

#h
splice @blah, 7, $#blah-7, @arr;

#i
foreach $i (@arr){
$i++;
}



#test
print "@blah\n";