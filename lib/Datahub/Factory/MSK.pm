package Datahub::Factory::MSK;

use strict;
our $VERSION = '0.01';

1;
__END__

=encoding utf-8

=head1 NAME

Datahub::Factory::Importer::MSK - Import data from L<Adlib|http://www.adlibsoft.nl/> data dumps as used by the L<MSK|http://mskgent.be/nl>

=head1 SYNOPSIS

    use Datahub::Factory::Importer::MSK;
    use Data::Dumper qw(Dumper);

    my $msk = Datahub::Factory::Importer::MSK->new(
        file_name => '/tmp/msk.xml',
        data_path => 'recordList.record.*'
    );

    $msk->importer->each(sub {
        my $item = shift;
        print Dumper($item);
    });

=head1 DESCRIPTION

Datahub::Factory::Importer::MSK uses L<Catmandu|http://librecat.org/Catmandu/> to fetch a list of records
from an AdlibXML data dump generated by the L<MSK|http://mskgent.be/nl>. It returns an L<Importer|Catmandu::Importer>.

=head1 PARAMETERS

=over

=item C<file_name>

Location of the Adlib XML data dump. It expects AdlibXML.

=item C<data_path>

Optional parameter that indicates where the records are in the XML tree. It uses L<Catmandu::Fix|https://github.com/LibreCat/Catmandu/wiki/Fixes-Cheat-Sheet> syntax.
By default, records are in the C<recordList.record.*> path.

=back

=head1 ATTRIBUTES

=over

=item C<importer>

A L<Importer|Catmandu::Importer> that can be used in your script.

=back

=head1 AUTHOR

Pieter De Praetere E<lt>pieter at packed.be E<gt>

=head1 COPYRIGHT

Copyright 2017- PACKED vzw

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Datahub::Factory>
L<Datahub::Factory::Adlib>
L<Catmandu>

=cut