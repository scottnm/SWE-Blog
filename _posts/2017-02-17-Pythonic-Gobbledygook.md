---
layout: post
title: Pythonic Gobbledygook
---

### What did you do this past week? ###

This past week, my partner and I wrapped up the Netflix project. We ended up
finishing much quicker than we had previously estimated. I attribute this to all
of the helpful caches that other students in the class generated. When it came
time to implement a smarter prediction model, we could design solutions without
the burden of where the data was coming.

### What will you do next week? ###

Next week, I will start looking for partners for our final class project. My
team still has room for 4 more people, and (as I understand it) each team needs
to be full before we start working. If I can't find 4 other partners, random
classmates will be assigned to my team, but I'd much rather vet new partners
myself so that I'm sure we have similar goals and attitudes for this class.
It is extremely frustrating to get paired with someone who doesn't have the same
level of investment in the project and often leads to larger team issues.

### What's my experience of the class? ###

The class is still going well, but I often find myself disagreeing with a lot of
the pythonic gobbledygook we are being taught. Despite Python's own creed that
hails "Simple is better than complex \ Complex is better than complicated", many
of Python's own features border on complicated. Here are a few examples:

**Operator Overloading**

During the lesson where we covered the *Variables.py* notes, we talked about how
Python can use the `+` and `+=` operators to do append to the list and tuple
types. I would argue that we already start to see a problem right here. Operator
overloading is usually a pretty bad practice that only serves to save a few
keystrokes at the cost of obfuscating the programmer's intention. There are
times when it's appropriate though. Overloading the `+` operator for two
`Vector3`s is clearly defined and appropriate. I feel that `+=` to mean append
for lists is a less appropriate because of the subtle difference between `+=`
and `_ = _ + _`.

```python
# Excerpt from Variables.py
a = [2, 3, 4]
b = a
assert a is b
b += [5]
assert a == [2, 3, 4, 5]
assert a is b

a = [2, 3, 4]
b = a
assert a is b
b = b + [5]
assert a == [2, 3, 4]
assert b == [2, 3, 4, 5]
```

Professor Downing gave us a reason for why this example and another example
using tuples act the way they do when using the `+=` and `+` operator, and
honestly, I'm not sure I totally understand it yet. My inability to understand
something should not be the metric used to decide whether something is simple
or not, but for something as straight forward as the `+` operator, there really
should never be any point of confusion. Operators provide us with simple,
unmistakable functionality and when subtle side effects cause confusion then
operator overloading is being inappropriately used.

Rules broken from Zen of Python:

* Explicit is better than implicit
* There should be one-- and preferably only one --obvious way to do it

**For-Else statements**

We just learned these in class today, and there's nothing egregiously wrong with
them. I just think they are a little useless. Instead of having to write...

```python
finish_flag = true
for ...:
    if some_condition:
        finish_flag = false
        break
    do_stuff()
if finish_flag:
    # we know the for loop ran to completion
```

we can write...

```python
for ...:
    if some_condition:
        break
    do_stuff()
else:
    # we know the loop ran to completion
```

All we've done is save two lines of code, and waste a minute of anyone's time
who wasn't familiar with the for-else pattern. I feel like most code should look
language-agnostic; using language specific patterns to very general problems
like this only serves to confuse.

Rules broken from Zen of Python:

* Explicit is better than implicit

**Iterators returning Iterators**

Iterators return themselves when you ask for their iterator. What's the purpose
of this? To enable some syntactic python sugar. Our use case was so that we
could use an iterator to get the first element of an iterable and then use that
iterator to continue reading the remaining elements in a foreach loop. This
syntactic sugar seems pointless when the same thing can be achieved with...

```python
a = [1,2,3,4]
a_itr = iter(a)

first_val = next(a_itr)
# do something with first_val

try:
    while True:
        # continue reading from the itr
        val = next(a_itr)
        # ... do stuff with val
except StopIteration:
    pass
```

This actually brings up another gripe that this loop **should** be even
cleaner and look like this...

```python
a = [1,2,3,4]
a_itr = iter(a)

first_val = next(a_itr)
# do something with first_val

while has_next(a_itr):
    # continue reading from the itr
    val = next(a_itr)
    # ... do stuff with val
```

This would achieve the same effect as the *iterators-returning-iterators*
pattern with similar cleanliness and the added benefit that programmers don't
have to bother making their own iterators respond to `__iter__`.

I'm also bothered by this because it's encouraging a pattern that guarantees
that an exception will fire which is expensive to handle
([source](https://docs.python.org/2/faq/design.html#how-fast-are-exceptions)).

Rules broken from Zen of Python:

* There should be one-- and preferably only one --obvious way to do it
* Practicality beats purity (This is a bit of a stretch but I think guaranteed
exceptions are impractical. They should be exceptional not guaranteed.)

**Conclusion**

At the end of the day, most of this pythonic gobbledygook isn't horrible, but
I do consider it poor language design that encourages bad practices. Any
developer should be able to look at most any piece of code and have a strong
understanding of what is going on. Python's strange idioms seem to encourage
conciseness over readability and simplicity, and seem more concerned with being
beautiful than being simple or clear. Computers are better at being simple than
being beautiful and we should embrace that when writing our programs.

### Tip-of-the-week? ###

Object-oriented Programming and a lot of core software engineering principles
that we learn in school are pretty useful, but sometimes it's interesting to see
how a subset of the industry with a more focused problem-domain views these core
principles. My tip-of-the-week is to check out talks by two well renowned
developers in the videogame industry,
[Jonathan Blow's talk on a programming language for games](https://youtu.be/5Nc68IdNKdg) &
[Mike Action's Data-Oriented Design](https://www.youtube.com/watch?v=rX0ItVEVjHc).
These lectures look at programming and language design from the perspective of
developing highly effecient programs and discuss how what we learn as
students actually hurts our ability to make efficient software.

Some other interesting lectures that I'd recommend checking out are

* [Brian Will's Object Oriented Programming is Bad](https://www.youtube.com/watch?v=QM1iUe6IofM)
* [Abner Coimbre's What Programming is Never About](https://www.youtube.com/watch?v=Lzc3HcIgXis)

I think it's good to watch these lectures not as a call-to-arms to dogmatically
drop everything you learned in school or despise OOP, but to get an
understanding of the foundations that other successful engineers built their
careers on.
