---
layout: post
title: Testing Friendship
---

Despite Professor Downing's Object Oriented Programming course being the second class I have taken that exclusively uses C++,
there are still many C++ features that I don't quite understand, among those is
the "Friend" declaration. Functions and methods labelled as friends to a
class have access to that class's protected and private members. At first glance,
this seems like an egregious error because its primary purpose seems to be to break
the object oriented principles of encapsulation and data-hiding. On the contrary, Professor Downing's
most recent project, the Allocator, makes use of friend declarations for testing purporses.
Combining friend declarations with Google's unit testing framework allows private
methods to be unit tested in the same way that public methods would. This allows
a programmer to be more confident about the classes they write since their public
interfaces more often than not will rely on their private methods. As well,
using friend declarations, a programmer can set the entirety of the state of an
object to be tested including its private data members. So at first glance, these
friend functions and classes may seem like a useless feature to break encapsulation, but
when used properly they can help build robust testing suites.

# Tip of the Week #

Writing different types of software lends itself to using different types of
programming patterns and paradigms. For example, one of the more famous patterns used in
interactive programming is the Model, View, Controller patttern (MVC). Understanding
these patterns is critical to being a successful programmer. For those interested
in developing video games, I recently found a very interesting book on video
game design patterns called "Game Programming Patterns" by Robert Nystrom. Some of these can be applied elsewhere, but regardless
of application they are interesting to study. A full version of the book can
be found [here](http://gameprogrammingpatterns.com/contents.html).