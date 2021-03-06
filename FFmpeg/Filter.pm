package FFmpeg::Filter; 

use Moose::Role; 
use MooseX::Types::Moose 'Str';  
use FFmpeg::Types 'Filter'; 

use namespace::autoclean; 
use experimental qw( signatures ); 

has 'filter' => ( 
    is        => 'rw', 
    isa       => Filter, 
    predicate => '_has_filter', 
    clearer   => '_unset_filter',
    coerce    => 1, 
    lazy      => 1, 
    default   => sub ($self) { 
        return 
            $self->_has_hwaccel 
            ? "scale_npp=${\$self->scale}" 
            : "scale=${\$self->scale}" 
    } 
); 

has 'scale' => ( 
    is        => 'rw', 
    isa       => Str, 
    predicate => '_has_scale', 
);  

1
