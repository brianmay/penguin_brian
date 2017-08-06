---
layout: talk
title: The Art of Klingon Programming
conference: /conferences/2010/02/02/LUV/
speaker: various
begin: 2009-02-03 20:00
---
Esign Paul Fenwick,  
Starfleet Software Services,  
Perl Training Andromeda

Sideways propagation

    use Fatal qw(open);

... has package wide scope and poor quality errors

    use autodie qw(open);

... has lexical scope and produces better errors

    eval {
    ...
    }

    if ($@) {
    ...
    }

perl 5.10 has given construct instead.

    eval {
    ...
    }

    given ($@) {
    when ...
    when ...
    ...
    }

system administration

    system("mount /path/to/file");
    system("make_backups");
    system("delete_archives");

system("...") and die "$?" - produces 4096 - exit code from perl << 8.

waitpid - yucky

autodie fixes system result so it behaves like you would expect it to.

    system([0,16],"mount /path/to/file");

function is allowed to return 16.

fork special case, 0 means success, non-zero is child id.

sub-class autodie

autodie going into perl 5.10 core. Works with 5.8.0+. Pure perl. No depedancies.

performance? A little bit slower then before.
