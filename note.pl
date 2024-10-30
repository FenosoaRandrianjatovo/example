#!/opt/homebrew/bin/perl

# my $word = "@example";
# # using a regular expression
# if ($word =~ /^@/) {
#     print "The word begins with @\n";
# } else {
#     print "The word does not begin with @\n";
# }




%variables = ('!' => '0',

'"' => '1',

'#' => '2',

'$' => '3',

'%' => '4',

'&' => '5',

"'" => '6',

'(' => '7',

')' => '8',

'*' => '9',

'+' => '10',

',' => '11',

'-' => '12',

'.' => '13',

'/' => '14',

'0' => '15',

'1' => '16',

'2' => '17',

'3' => '18',

'4' => '19',

'5' => '20',

'6' => '21',

'7' => '22',

'8' => '23',

'9' => '24',

':' => '25',

';' => '26',

'<' => '27',

'=' => '28',

'>' => '29',

'?' => '30',

'@' => '31',

'A' => '32',

'B' => '33',

'C' => '34',

'D' => '35',

'E' => '36',

'F' => '37',

'G' => '38',

'H' => '39',

'I' => '40',

'J' => '41');

# # print $variables{"#"};
# $test= "#8BCCGGGGGGGGGGGGGGGGGGGGGGGG";
# @result= split(//, $test);

# %variables
# print @result[2];

my %quality_mapping = (
    'A' => 1,
    'B' => 2,
    'C' => 3,
    # ajoutez d'autres mappings selon vos besoins
);

my $quality_line = "ABCA";   # Exemple de chaîne à mapper
my @quality_scores;

# Utilisez une boucle while avec substr pour parcourir chaque caractère
my $i = 0;
while ($i < length($quality_line)) {
    my $char = substr($quality_line, $i, 1);   # Obtenir un caractère à la fois
    push @quality_scores, $quality_mapping{$char};
    $i++;
}

print "@quality_scores\n";