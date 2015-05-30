---
layout: talk
title: Not common enough optimisations
meeting: /conferences/2008/02/02/LCA2008/
speaker: Jacinta Richardson, Perl Training Australia
begin: 2008-01-29 11:30
---
profiling

* perl -d:DProf program.pl
* great way to find areas of code that need improvement.

benchmarking

improve code before you write it

Big-O notation

* Find out why program is so slow
* How does program scale with increase data set
* Data set size n
  * O(c) - Constant time regardless on n
  * O(log n) - logarithmic
  * O((log n)^c) - poly logarithmic
  * O(n) - linear
  * O(n log n) - almost linear
  * O(n^2)
  * O(n^3)
  * O(n!) - insane with large data sets
  * etc

cN + dN^2 -> O(N^2)  
N^4 + N!  -> O(N!)  
2N        -> O(N)  
500N      -> O(N)

Details only important when comparing algorithms with same order.


    loop (items) {
    }

    loop (items) {
        do stuff
        loop (items) {
                do stuff
        }
        do stuff
    }

O(N + NN) => O(N^2)

Nested loops not always O(N^2).

Avoid reading input data (file) more then once.

Complicated data structures scary, but may save time.

* Go and learn complicated data structures.
* Alternative, right code so that it is modular, and can be changed
later.

Memory plentiful, use more memory for faster results.

    loop (items) {
        do_long_task(items.value)
    }

Cache result of do_long_task

    use Memoize;
    memoize(do_long_task);

Don't use for functions with side effects. Will cache the result of
the do_long_task function.

If you can leave loop early, do so.

Bad:

    system("grep $subject $file > $results");

Code is not organic, it doesn't cry. Do not worry about deleting/rewriting old
stuff.

## Summary

Do the things I told you so we can relax.
