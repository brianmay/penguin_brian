---
layout: talk
title: "Keynote: Who cares about Democracy?"
conference: /conferences/2020/01/13/LCA2020/
speaker: A/Prof Vanessa Teague
begin: 2020-01-16 09:10
talk_url: https://lca2020.linux.org.au/schedule/presentation/216/
---
# The sorry state of Australian election software and what you can do about it

End-to-end verifiable electronic electronics. Is possible. However has strong
assumptions. Systems fall short of these requirements.

Senate count is closed source code from foreign countries. We don't audit
paper votes.

System should provide evidence that it did the right thing at every step.
Anybody should be able to validate the results.

Voters should be able to validate their vote that was recorded on the behalf
was correct.

Privacy.

Source code does not need to be open. Authorities may not even be using the
code they say they are. What needs to be open is the data that allows
verification of each stage.

## SwissPost/Scytl

Two errors. Bug in shuffling, and one in decryption.

Roll your own cryptographic solution. They forgot to hash the input
as required.

Ordinary user's need to do complicated work to verify their results.

If you don't do it properly you can be tricked.

Verification requires expertise.

Bugs can undermine security.

Reasonable solutions exist for a polling place, but remote e-voting with
adequate safe guards is an unsolved problem.

## NSW iVote

Voters user Syctl Javascript to vote. Voters use different closed source
application to verify their votes.

Some code now available under NDA. Code was not available at election time.

NSW law mandating open public access to the source code? No.

Secret bulletin board to check proofs.

A single mixer server for encryption. Not sufficient for privacy.

Also affected by the two bugs in SwissPost/Scytl. 2nd bug was not fixed
correctly.

Problems identified 12 days before election.

## Victoria

Voting system means "[...] any other form of voting determined by the
Minister."

No legislative standards specified.

Coming to Legislative assembly in February.

## Electronic counting of paper votes

Results can be double checks. USA this is a big thing.

We do not manually check the senate preference votes.

## Summary

No laws to ensure computers must be doing correct thing.

Auditing needs to be open. Source code doesn't need to be open.

They won't do it unless forced to do so. Must be in legislation.

Voting over Internet is unsolved.

Senate counts, no independent count, open to fraud.

Rigorous statistical audit should be mandated.
