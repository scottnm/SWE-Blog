---
layout: post
title: A World of Construction
---

These last two weeks of class have been primarily spent discussing C++'s construction model.
A while ago we learned that when you define a class in C++ you get 4 methods defined implicitly:
a default constructor, a copy constructor, a default destructor, and a copy assignment operator.
A lot of the time these implicit methods are just what the programmer needs and can save them
the time of tediously declaring four of the most common methods used in every class. Recently
in class we were discussing scenarios (using vector as an example) where these implicit methods
are not up to the job. The case seemed to be that since a vector holds data that references
dynamic memory (the beginning and end pointers) we cannot just use the pre-defined
construction, destruction, or assignment methods because they would just copy around
the pointers and not data which could cause a real mess. The general rule of thumb
in fact seems to be that classes which hold pointers to unique objects should not be
naively copyable. This might be the motivation by the c++ unique_ptr. I am not very
familiar with them, but I know the purpose is to prevent a pointer to an object
from being copied around potentially causing problems with double-freeing or leaking
memory. 

What we have been talking about in class has also illuminated some other mysterious
C++ quirks that I have not quite understand until recently. For instance, when you
define a class with a constant data member, the default copy assignment operator
is deleted to prevent a user from trying to copy one object's const data member
into another object of the same class (which would essentially defeat the purpose
of the const keyword). Another weird C++ quirk that I am now understanding is
why STL containers cannot be containers for references where as they can be containers
for pointers. Since a reference is mechanically a constant, non-null pointer, it
would be impossible to construct the underlying container in advance and then
place the reference in that container later. 

All in all, these past few weeks have not revealed any new earth-shattering C++
features to me, but it has demystified some of the ticks and quirks that just
seemed unnecessary and silly before (some of them still seem silly, but they at least
logically make sense now).


### Tip of the Week

Anyone who is interested in engineering user-facing software will have to accept
the fact that today's world of user-facing software is dominated by today's mobile
platforms. Even if they do not aspire to be a mobile developer, I believe it is imperative
to be familiar with that paradigm of development, and that means that
they should also be up to date on the latest developments in the mobile world.
Google recently announced a new cross platform mobile framework called
[Flutter](http://flutter.io/), and I think it is worth exploring since getting in on
the groundlevel of new and performant frameworks can give you a huge advantage. 