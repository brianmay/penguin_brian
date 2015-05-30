---
layout: page
title: Flying
description: Piloting light aircraft.
---

I am a [pilot]({{ site.baseurl }}/skills/Flying/) and fly regularly from
[Lilydale airport](http://www.lilydaleairport.com.au/). Following is some of
the places I have travelled on light aircraft, most of which I was involved
with some of the flying..

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
