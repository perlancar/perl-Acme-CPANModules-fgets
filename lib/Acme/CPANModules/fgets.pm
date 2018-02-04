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

My favorite module is L<PerlIO::fgets>. L<File::fgets> seems to have trouble
dealing with piped command. And L<File::GetLineMaxLength> is pure-Perl and so is
not as speedy as the XS libraries.

_
    entries => [
        {
            module => 'PerlIO::fgets',
        },
        {
            module => 'File::fgets',
        },
        {
            module => 'File::GetLineMaxLength',
        },
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION
