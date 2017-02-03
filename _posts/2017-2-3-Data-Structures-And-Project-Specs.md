---
layout: post
title: Data Structures and Rapid Specification Change
---

### What did you do this past week? ###

This past week saw the end of project 1. I ended my last blog post defeated by a MemoryError, but started this week with
a fresh mind and found a solution.

The main issue that led to my MemoryError was a poor choice of data structure. Our problem
specification gave us an upperbound to the input that we would have to solve for, and knowing this I planned to use a
fixed-sized array that was large enough to cache the entire problem space. A fixed-size array would spare my program from
having to waste cycles resizing my cache as more values were computed. As well (and possibly more importantly), a fixed-sized array would
allow me to reason about my software with more certainty. By removing some of the convenient abstraction of higher-level data structures,
I can more easily reason about the memory-footprint and time-complexity of my program; Avoiding buckets, exponential
resizing, and the efficiency of hashing functions makes my program simpler, and simplicity is a very attractive quality in software.

At first glance, I couldn't find anyway in python to make a fixed-size C-like array or even to reserve space in python's list data structure.
In the interest of just getting a simple solution started, I decided to use a suboptimal data structure, python's dictionary, and this is
where my problems started. My dictionary-based cache, passed the first set of HackerRank tests but faltered when my program ran fast enough
to not timeout on the final tests.

A MemoryError reared its ugly head and python's abstraction became more of a foe than a friend. I ran into
all kinds of wild debug information while I was trying to figure out exactly what was going wrong. The stacktrace showed that I was hitting
the error when I was writing to the dictionary-cache which led me to believe it was an out-of-memory-exception (since dictionaries have a theoretically
unbounded size). When I tried to figure out how much memory my cache was consuming it reported something 30x larger than what I was expecting.
Even stranger, it seemed like I was memory could be allocated to other data structures in my program but not to my cache.

This dictionary abstraction compounded with the supremely-limited HackerRank debug information left me at a dead end.
I decided to try giving the fixed-sized array solution another chance, however instead of searching for help creating a "fixed-sized array",
I searched to create a "pre-allocated array." The suggested solution on stack overflow was `array = [None] * reserve_size` and this simple change
singlehandedly got rid of my MemoryError. I no longer had to worry about memory being this weird abstract thing that would explode out of my control
and crash my program. I finally had a solution that was passing all of the HackerRank tests and life was sweet again.

### What will you do next week? ###

Next week, I plan on getting started early on project 2. I already have a partner in mind, and I am excited to be working on something a little more practical
than the Collatz Conjecture. 

### What's my experience of the class? ###

I would still rate my experience in the class as positive so far, but something happened this week that left a sour taste in my mouth. 
A day before the project was due, Professor Downing discovered that a lot of students were using a solution that consisted entirely
of using a meta-cache of precomputed values and took issue with it. I believe that shouldn't have been an issue to begin with. If a meta-cache is
the most optimal way of solving the problem given the its constraints then it is wonderful that so many students ended up using
that solution. Perhaps there were concerns that the meta cache solution would be shared around against the academic integrity policy,
but the same could be said of any programming assignment. As well, I believe that handling the situation by altering the project spec
a day before the due date was a poor decision. Had a student had a previous engagement that would have prevented them
from accessing a computer or Piazza for those two days they would have unfairly been docked points. Perhaps this was a lesson to reinforce
Extreme Programming practices like being flexible to changes in the project, but had this happened in the real working world those changes
would have been detailed out in a formal meeting where the development team could explain the updated time estimate for the project.
If I was ever working with a client that requested an update to a project after normal working hours the day before a big release 
without any kind of back-and-forth, I would consider it unprofessional.

All in all, the sudden specification change didn't affect me too much, but there is a bigger issue here. Changing the project spec at the
last second in an incredibly inconvenient way sets a concerning precedent for future projects. While it's important to understand that
things like this might happen out in the real world of Software Engineering, it's also important to be empathetic to the fact that
many of the students are taking other classes and may have jobs outside of school that require their attention. In the real world,
we will be able to fully dedicate ourselves to our one software development roles, but right now we need structure to help us juggle
our many obligations.

### Tip-of-the-week? ###

A lot of problem solving in Computer Science happens at a whiteboard away from a computer. The GDC has good number of whiteboards sitting
around for us to use, but more often than not it seems like the markers and erasers have all vanished. Last semester I invested a whopping
$6 into a set of [markers](https://www.amazon.com/AmazonBasics-Low-Odor-Dry-Erase-Markers/dp/B00T3ROUES?th=1) that I carry around in my
backpack, and I recommend everyone do the same. Some of the hardest conceptual problems you'll have to solve will be easiest to solve at
a whiteboard and you'll want to be prepared.
