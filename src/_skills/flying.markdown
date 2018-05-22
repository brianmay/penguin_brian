---
layout: page
title: Flying
description: I hold a private pilots license.
---

I first started flying
in 1998, and obtained my Private Pilots
License (PPL) in October 1999. The PPL allows me to fly light aircraft such as
Piper Warriors and Piper Archers. I am allowed to fly anywhere in Australia, as
long it is daylight and I keep out of clouds.

Following is some of the places I have travelled on light aircraft, most of
which I was involved with some of the flying.

<table>
    <thead>
        <tr>
            <th>Destination</th>
            <th>Transport</th>
            <th>Begin</th>
            <th>End</th>
            <th>Purpose</th>
        </tr>
    </thead>
    <tbody>
        {% for trip in site.categories.trips %}
        {% if trip.transport == "light aircraft" %}
        <tr>
            <td><a href="{{ site.baseurl }}{{ trip.url }}">{{ trip.destination }}</a></td>
            <td>{{trip.transport}}</td>
            <td>{{trip.begin}}</td>
            <td>{{trip.end}}</td>
            <td>{{trip.purpose}}</td>
        </tr>
        {% endif %}
        {% endfor %}
    </tbody>
</table>
