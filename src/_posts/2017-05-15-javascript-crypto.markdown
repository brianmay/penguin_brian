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

I see on [stackoverflow](http://stackoverflow.com/questions/18279141/javascript-string-encryption-and-decryption) there are three choices:

* [sjcl](https://github.com/bitwiseshiftleft/sjcl) - I believe npm at [sjcl npm](https://www.npmjs.com/package/sjcl). Last security advisory 2014 - is it
  really that good? Or maybe abandoned?
* [CryptoJSi](https://github.com/sytelus/CryptoJS) - dead project.
* [crypto-js](https://github.com/brix/crypto-js) - also has NPM. Has been criticised for using a poor algorithm
  (MD5 based) to convert passphrases to
  keys - [Top 10 developer crypto mistakes](https://littlemaninmyhead.wordpress.com/2017/04/22/top-10-developer-crypto-mistakes/)].

I also see other choices:

* [nodejs_crypto](https://nodejs.org/api/crypto.html) - looks like it uses C openssl libraries.
* SubtleC[rypto](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/encrypt) - native browser side API. Not supported on IE. See
  [SubtleCrypto example](https://gist.github.com/chrisveness/43bcda93af9f646d083fad678071b90a).

There also appears to be more options if hashing is the only requirement, not encryption, e.g.:

* [jshashes](https://github.com/h2non/jshashes)

However, I think don't think this is going to help with encryption.

Any others?

Note: I previously posted this to 
[another stackoverflow question](http://stackoverflow.com/questions/43928071/good-javascript-cryptographic-library).
but it was put on hold as it was considered "off-topic".
