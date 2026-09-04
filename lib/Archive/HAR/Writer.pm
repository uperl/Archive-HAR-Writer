package Archive::HAR::Writer;

# ABSTRACT: Interface for writing HTTP Archive (HAR) files.

use 5.042;
use warnings;
use Path::Tiny;
use JSON::MaybeXS ();

=head1 NAME

Archive::HAR::Writer - Interface for writing HTTP Archive (HAR) files

=head1 SYNOPSIS

=head1 DESCRIPTION

=cut

use Class::Tiny { api => sub { 1 } };

=head1 PROPERTIES

=head2 api

API level to use.  Defaults to 1.  If breakinch changes are made to the API,
this value can be used to control which version is used.

=head1 METHODS

=head2 add_http_transaction

 $har->add_http_transaction($transaction);
 $har->add_http_transaction([$request, $response]);

Add the HTTP transaction to the archive.  C<$transaction> should be one of:

=over 4

=item L<Mojo::Transaction::HTTP>

A mojolicious HTTP transaction object.

=item C<[$request, $response]>

An array reference containing a request and response object.

The C<$request> must be a L<HTTP::Request> and the C<$response>
must be a L<HTTP::Response>.

=back

Other classes may be supported in the future.

=cut

sub add_http_transaction ( $self, $transaction ) {
    ...;
}

=head2 write_file

 $har->write_file($filename);

Write the HAR archive to a file.

=cut

sub write_file ( $self, $path ) {
    $path = Path::Tiny->new($path) unless $path isa Path::Tiny;

    ...;
}

=head2 write

 $har->write($fh);
 $har->write(\$string);

Write the HAR archive to a file handle or string reference.

=cut

sub write ( $self, $fh ) {
    ...;
}

=head1 SEE ALSO

L<Archive::HAR>

=cut
