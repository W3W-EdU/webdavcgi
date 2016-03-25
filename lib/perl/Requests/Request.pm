#########################################################################
# (C) ZE CMS, Humboldt-Universitaet zu Berlin
# Written 2016 by Daniel Rohde <d.rohde@cms.hu-berlin.de>
#########################################################################
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#########################################################################
package Requests::Request;

use strict;
use warnings;

our $VERSION = '2.0';

use CGI::Carp;

sub new {
    my ( $this) = @_;
    my $class = ref($this) || $this;
    my $self = {};
    bless $self, $class;
    return $self;
}

sub handle {
    croak('Implement me!');
}

sub logger {
    my ($self,@args) = @_;
    return main::logger(@args);
}
sub debug {
    my ($self,@args) = @_;
    return main::debug(@args);
}
1;
