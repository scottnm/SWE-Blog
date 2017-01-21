---
layout: post
title: OOD == gOOD
---

The past few readings for this class have really been enlightening. They have presented Object Oriented Design in ways that I would not have had the insight to appreciate. I feel like these readings are really teaching me something useful. 

In one of the readings, the author laid out the foundations of the Single 
Responsibility Principle: a class should only have one responsibility to prevent
unnecessary coupling. I thought this was obvious and that I had a fair grasp of the
concept. For instance, if you are designing a game, 
the player object is responsible for all the actions a player might do,
but is not a listener for all the inputs that a user might perform in the game
(even though some of those inputs will go to the player anyway). 
That task is better managed by a Controller or an InputReciever class.
The readings gave a simple example that took me a little
bit of time to really process and understand, despite how trivial it might have
seemed. It posited that if there were a shape class, it wouldn't make sense
for it to provide a routine to draw itself and compute geometric properties
like area. The article thought it better to split those responsibilities into
separate geometricShape and graphicalShape classes.
At the time, it seemed like this was an example of over-design. Why bother building two
separate classes that will be coupled in the end anyway? The article went on
to make the point that it wasn't exactly true that those two classes would always be
coupled together, and in that case, coupling them together could make using just one of those
classes unnecessarily complicated. What I've tried to take away from that reading
is that the Single Responsibility Principle is not just a game of word association, "a square can be drawn, therefore it should have a draw() method." Delegating
responsibilities and tasks to classes is a process that requires much more forethought
and design.

# Tip of the Week

Programming in some respects is kind of like art. Every programmer has their own
style, preferences, and tools. I also believe that for any one
programmer to be exceptional, they must observe the programming style and principles
employed by other programmers. This is one of the reasons why I love pair programming
so much. It gives you the opportunity to watch someone else work and see what their
programming patterns, behaviors, and design preferences are. 

My tip of the week is to find some way to observe other people programming. Of
course, this doesn't mean to skulk around and harass people 
or watch someone program an assignment that should be kept to themselves
for academic honesty. There are plenty of great avenues that already exist to watch
other people code such as [r/WatchPeopleCode](http://www.reddit.com/r/watchpeoplecode).
For anyone interested in developing video games, something I enjoy is watching Johnathan Blow's [archived programming livestreams](https://www.youtube.com/user/jblow888/videos) (Johnathan Blow created the
smash hit puzzle game, Braid). I have learned plenty of programming tidbits that I wouldn't
have ever picked up if a fellow programmer hadn't justified their programming
decisions and choices to me (or to an audience that I was apart of). 
