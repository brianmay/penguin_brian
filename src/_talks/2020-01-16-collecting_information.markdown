---
layout: talk
title: "Collecting information with care"
conference: /conferences/2020/01/13/LCA2020/
speaker: Opal Symes
begin: 2020-01-16 11:40
talk_url: https://lca2020.linux.org.au/schedule/presentation/71/
---
We build systems without checking our assumptions we make are valid.

Awareness of assumptions, and how to challenge them.

I have assumptions too.

I use: Elixir, Javascript, Python, Rust

Names.

* Use unicode everywhere.
* First Name + Last Name - both required. Works well for western names. Has
  some flaws. Some people may not have two names. Make one field optional?
* Unicode. Emoiji. Check production supports Emoji everywhere. Mysql may
  have problems, unless using utf8==utf8mb4. Mariadb is different and uses
  Latin1 by default.
* Chinese names. The first word is not always the given name.
* Don't split the name.
* Not serious. Use name as password. Have you changed your name recently?
* No length limits.
* Don't say "Your name is wrong."

Emails

* Unicode characters, comments, spaces are all allowed.
* Many websites reject legitimate email addresses.
* Validate. Does it have a `@`. Check if similar to know providers. Will it be
  accepted y email provider? Possible overkill: Check for MX record, ask SMTP
  user if it exists.

Gender

* Need to have more then 2 options. 2 options like asking "what is your
  favourite colour" and giving two options.
* 3 options better: Male, Female, Non-binary. Same people don't like this.
  Like "what is your favourite colour?" and giving options "Pink", "Blue",
  "Other".
* Free text entry.
* Use of demographic data.
* Community composition.
* Ask for preferred pronouns instead. He, she, they.
* Titles: does not imply gender or vice versa.
* Gender does not imply clothing preferences.
* WGEA. Act defined gender as female or male. Ask the user what they want
  to be recorded as.
* Passports. M/F/X. Where X is other. 4th option, don't include on passport.
* Give people reasons why you have to capture a binary. Give people option to
  opt out.
* Don't use Gender API, that guess your gender based on other information such
  as your name.

Changes & Deletion

* Make it easy for people to change.
* Give user's options if it isn't. e.g. legal name and preferred name options.
* Support change username. Don't use username as primary key. What happens to
  the old username? Can old username be reused.
* Changing email. Security implications.
* Deleting data.
