---
layout: talk
title: Escape from auto-manual testing with Hypothesis!
conference: /conferences/2018/08/24/PyConAu2018/
speaker: Zac Hatfield-Dodds
begin: 2018-01-25 14:10
---
What is auto-manual testing? What is hypthesis?

Manual test: A human does something.

An automated test: A program tests the program for you.

An auto-manual test: A human writes the test. The computer runs it.

If you spend a lot of time writing tests, you might as well write a computer
program that writes the tests for you.

Property based tests.

Design by contract. Assertions. Find errors early.

Assert: Detect bugs in the code.

The test oracle.

Faker vs Hypothesis. Hypothesis uses non-random data and explores edge
cases. Hypothesis generates a minimal set of examples to test edge cases.
