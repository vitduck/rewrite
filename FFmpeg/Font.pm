package FFmpeg::Font; 

use Moose::Role;  
use MooseX::Types::Moose qw( Str Int ); 

use strictures 2; 
use namespace::autoclean; 

has 'font_name', ( 
    is       => 'ro', 
    isa      => Str, 
    required => 1, 
); 

has 'min_font_size', ( 
    is       => 'ro', 
    isa      => Int, 
    lazy     => 1, 
    init_arg => undef,
    default  => 26, 
); 

has 'max_font_size',  ( 
    is       => 'ro', 
    isa      => Int, 
    lazy     => 1, 
    init_arg => undef,
    default  => 32, 
); 

1;  
