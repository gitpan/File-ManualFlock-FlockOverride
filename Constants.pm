package File::ManualFlock::Constants;
#===================================================================#

#======================================#
# Version Info                         #
#===================================================================#

$File::ManualFlock::Constants::VERSION = '1.03';

#======================================#
# Dependencies                         #
#===================================================================#

#--------------------------------------#
# Standard Dependencies

use strict;
use vars qw(@ISA @EXPORT %EXPORT_TAGS);

#--------------------------------------#
# Programmatic Dependencies

#======================================#
# Inheritance                          #
#===================================================================#

#use base Exporter;

require Exporter;
@ISA = qw(Exporter);

# Items to export into callers namespace by default
@EXPORT = qw( LOCK_SH 
              LOCK_EX
	            LOCK_NB
	            LOCK_SH
	            LOCK_UN
	            LOCK_FO
	            MFL_INFINITE
              MFL_O_RDONLY
              MFL_O_WRONLY
              MFL_O_APPEND
              MFL_O_RDWR
              MFL_O_NONBLOCK
              MFL_O_BINARY
            );

# Named groups of exports
%EXPORT_TAGS = ( 'mflock'   => [qw(LOCK_SH LOCK_EX LOCK_NB LOCK_UN LOCK_FO MFL_INFINITE)],
                 'flock'    => [qw(LOCK_SH LOCK_EX LOCK_NB LOCK_UN)],
                 'mfl_open' => [qw(MFL_O_RDONLY MFL_O_WRONLY MFL_O_APPEND
                                   MFL_O_RDWR MFL_O_NONBLOCK MFL_O_BINARY)]
               );

#======================================#
# Public Methods                       #
#===================================================================#

sub export_to_pkg
{
      my $pkg = shift;
      my $to_pkg = shift;
      $pkg->export($to_pkg, @_);
}

#--------------------------------------#
# Constants

# mflock lock constants

#*LOCK_SH = sub () {1};
use constant LOCK_SH => 1;
use constant LOCK_EX => 2;
use constant LOCK_NB => 4;
use constant LOCK_UN => 8;
# force lock; safe to renew locks you own 
# (not implemented yet )
use constant LOCK_FO => 16;
use constant MFL_INFINITE => -1;

# mflock tools open constants

use constant MFL_O_RDONLY   => 1;
use constant MFL_O_WRONLY   => 2;
use constant MFL_O_APPEND   => 4;
use constant MFL_O_RDWR     => 8;
use constant MFL_O_NONBLOCK => 16;
use constant MFL_O_BINARY   => 32;

#===================================================================#
1;
