---
layout: post
title: Crypto Libraries for JavaScript
date: 2017-05-15 18:00:00 +1000
tags: programming javascript
---

Crypto Libraries for JavaScript
===============================
What is a good cryptographic library for pure JavaScript? Ideally should be in
npm.

I see on stackoverflow_ there are three choices:

* sjcl_ - I believe npm at `sjcl npm`_. Last security advisory 2014 - is it
  really that good? Or maybe abandoned?
* CryptoJS_ - dead project.
* crypto-js_ - also has NPM. Has been criticised for using a poor algorithm
  (MD5 based) to convert passphrases to
  keys[`Top 10 developer crypto mistakes`_].

I also see other choices:

* nodejs_crypto_ - looks like it uses C openssl libraries.
* SubtleCrypto_ - native browser side API. Not supported on IE. See
  `SubtleCrypto example`_.

There also appears to be more options if hashing is the only requirement, not encryption, e.g.:

* jshashes_

However, I think don't think this is going to help with encryption.

Any others?

Note: I previously posted this to `another stackoverflow question
<http://stackoverflow.com/questions/43928071/good-javascript-cryptographic-library>`_.
but it was put on hold as it was considered "off-topic".

.. _stackoverflow: http://stackoverflow.com/questions/18279141/javascript-string-encryption-and-decryption
.. _sjcl: https://github.com/bitwiseshiftleft/sjcl
.. _`sjcl npm`: https://www.npmjs.com/package/sjcl
.. _CryptoJS: https://github.com/sytelus/CryptoJS
.. _crypto-js: https://github.com/brix/crypto-js
.. _`Top 10 developer crypto mistakes`: https://littlemaninmyhead.wordpress.com/2017/04/22/top-10-developer-crypto-mistakes/
.. _nodejs_crypto: https://nodejs.org/api/crypto.html
.. _SubtleCrypto: https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/encrypt
.. _`SubtleCrypto example`: https://gist.github.com/chrisveness/43bcda93af9f646d083fad678071b90a
.. _jshashes: https://github.com/h2non/jshashes
