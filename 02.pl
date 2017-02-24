#!/usr/bin/perl

=use strict;
=use warnings;

=encoding UTF8
=head1 SYNOPSYS

Вычисление простых чисел

=head1 run ($x, $y)

Функция вычисления простых чисел в диапазоне [$x, $y].
Пачатает все положительные простые числа в формате "$value\n"
Если простых чисел в указанном диапазоне нет - ничего не печатает.

Примеры: 

run(0, 1) - ничего не печатает.

run(1, 4) - печатает "2\n" и "3\n"

=cut

sub run {
    my ($x, $y) = @_;
    
    #my @prime = (1, 1);
    
    #for(my $i=2; $i <= $y; $n++){
    #    push @prime, $i;
    #}
    
    for (my $i = $x; $i <= $y; $i++) {
        my $prime = 1;
        if ($i < 2) {
            $prime = 0;
        } else {

        for (my $j = 2; $j <= $i/2; $j++){
            if ($i % $j == 0) {
                $prime = 0;
                last;
                }
            }
        }
        
        if ($prime == 1) {
            print "$i\n";
        }
    }
}

1;
