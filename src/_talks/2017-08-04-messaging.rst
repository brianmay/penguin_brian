---
layout: talk
title: The Messaging of Things
conference: /conferences/2017/08/03/PyConAu2017/
speaker: Mike Leonard
begin: 2017-08-04 13:35
---

The Messaging of Things
=======================

Considerations
--------------
* Size.
* Robustness.
* Speed.

Example
-------
* Timestamp, temperature, humidity.

Encodings
---------
* Json: 65 bytes.
* Remove whitepsace.
* Abbreviate names: 35 bytes.
* Avro. Define fields in JSON schema not message. 281 bytes.
* Avro batched: 13 bytes.
* Avro time stamps: 9 bytes.
* Protocol Buffers. Fields tagged with number. 9 bytes.
* Protocol Buffers repeated readings: 18 bytes.
* Protocol Buffers time stamps: 14 bytes.

Protocols
---------
* JSON-HTTP: 112 bytes
* Can reduce to only Host header with HTTP/1.1.
* Can remove Host header with HTTP/1.0.
* HTTP/2: Header compression. HPACK.
* MQTT - not a queue. Uses Broker. 2bytes headers.
* Websockets - no additional headers. No topic.
* MQTT over websockets.
* GRPC - server to server.
