package Acme::CPANModules::fgets;

# DATE
# VERSION

our $LIST = {
    summary => "fgets() implementations in Perl",
    description => <<'_',

Reading a line of data from a filehandle in Perl is easy, but Perl will happily
slurp line of any length without limit, even gigabytes which can cause your
script or system to run out of memory.

`fgets()` is a standard I/O C function to get a line of data with a length
limit. In many cases you don't need in this Perl but in some cases you do. The
lack of built-in `fgets()` function in Perl (unlike in, say, PHP) is a bit
annoying, but no worries because there are several CPAN modules that provide you
with just that.

_
    entries => [
        {
            module => 'PerlIO::fgets',
            description => <<'_',

Can handle piped command fine, but doesn't work well in non-blocking mode.

_
        },
        {
            module => 'File::fgets',
            description => <<'_',

XS module. Seems to have trouble dealing with piped command. But works well in
low-throughput situation as well as in non-blocking mode.

_
        },
        {
            module => 'File::GetLineMaxLength',
            description => <<'_',

Pure-Perl module. Different interface (use an OO wrapper) so a bit more
cumbersome to use. Uses a fixed 4096-byte block size so doesn't work well in
low-throughput situation. Doesn't work well in non-blocking mode.

_
        },
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION
