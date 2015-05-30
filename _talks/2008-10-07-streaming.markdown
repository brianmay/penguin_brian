---
layout: talk
title: Streaming the World for Free; Has mobile media's time come?
meeting: /conferences/2010/02/02/LUV/
speaker: Ben Balbo
begin: 2008-10-07 19:00
---
There is more then one way to skin a cat.

1. Grab camera input
   * dvgrab
   * Some encoders can read directly from capture device.
2. Encode stream
   * ffmpeg
   * vlc
   * mencoder
   * ffmpeg libavcodec library
   * Apple's quicktime broadcaster
   * codecs
      * H.264, XviD (DivX, 600 MPEG-4  patents), Dirac (open source patent free)
      * which codec? Depends on hardware, upload speed, quality desired
      * raw DV and HDV over 802.11g or 082.11n
      * trial and error
3. Server
   * Send to server
      * RTSP - VLC and Quicktime broadcaster
      * FFServer with ffmpeg
   * Streaming to server
      * RTSP
      * Red5 - only accepts RTMP but can expose FLV (flash video).
      * FFserver, streaming over http, not ideal.
4. Server sends stream to client
5. Client receives stream


## Linking them up

e.g. to stream RTSP and expose to FLV.

   * find/build RTSP to RTMP bridge
   * chain existing tools
   * stream over RTSP to DSS

## Limitations

* No RTSP streaming applications for mobile phones.
* RTMP streaming clients
* RTSP to FLV streaming servers
* Auto tuning streaming clients. Won't automatically degrade if network
connection deteriorates. e.g. if jumping from 3G to Wifi or vice versa.
* Flash playback on iPhone not currently possible.

## F/loss

Floss behind proprietary applications. Needs more work.
