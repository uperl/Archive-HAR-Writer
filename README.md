# Archive::HAR::Writer ![static](https://github.com/uperl/Archive-HAR-Writer/workflows/static/badge.svg) ![linux](https://github.com/uperl/Archive-HAR-Writer/workflows/linux/badge.svg)

Interface for writing HTTP Archive (HAR) files.

# SYNOPSIS

# DESCRIPTION

# NAME

Archive::HAR::Writer - Interface for writing HTTP Archive (HAR) files

# PROPERTIES

## api

API level to use.  Defaults to 1.  If breakinch changes are made to the API,
this value can be used to control which version is used.

# METHODS

## add\_http\_transaction

```
$har->add_http_transaction($transaction);
$har->add_http_transaction([$request, $response]);
```

Add the HTTP transaction to the archive.  `$transaction` should be one of:

- [Mojo::Transaction::HTTP](https://metacpan.org/pod/Mojo::Transaction::HTTP)

    A mojolicious HTTP transaction object.

- `[$request, $response]`

    An array reference containing a request and response object.

    The `$request` must be a [HTTP::Request](https://metacpan.org/pod/HTTP::Request) and the `$response`
    must be a [HTTP::Response](https://metacpan.org/pod/HTTP::Response).

Other classes may be supported in the future.

## write\_file

```
$har->write_file($filename);
```

Write the HAR archive to a file.

## write

```
$har->write($fh);
$har->write(\$string);
```

Write the HAR archive to a file handle or string reference.

# SEE ALSO

[Archive::HAR](https://metacpan.org/pod/Archive::HAR)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2026 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
