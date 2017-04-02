---
layout: post
title: Scrapping
---

### What did you do this past week? ###

This past week has really felt like a trial. This phase of the project has been
focused on the backend, so my workload has increased dramatically, and our source
API has been causing us plenty of grief. Data that we relied on has turned out
to either be inconsistent, useless, or misunderstood, so we've had to make many
revisions to our initial design as to what we could reasonably achieve in this
project. Despite the bumps in the road, we're still charging on, and I know we'll
pull through.

I also spent a good portion of the week setting up the infrastructure for
our own API. This helped lay the foundation for the backend by providing
us an interface to plug into once our data is all collected. It also helped the
frontend by allowing them to structure their code to load data dynamically.

A pleasant surprise this week was the Atlassian talk that Professor Downing
organized. I went into the talk expecting the usual repetitive company pitch
all UTCS students have heard a thousand times. "Our company is so great! We
change the world through X, Y, and Z. Did I mention we are all hip youngsters 
who drink beer at work and play ping pong at meetings?! Wow, we are just so
great." Of course they still pitched their company (which in and of itself isn't
bad at all), but during their presentation they discussed some really interesting
technical challenges they faced working on Hip Chat. Better yet, they discussed
the problem in a really straight forward that was easy to understand and almost
felt like advice for my own projects.

### What will you do next week? ###

This upcoming week we are going to be expanding our technical documentation,
organizing our scrapped data, and writing some much needed unit tests.

### What's my experience of the class? ###

Class is going fine. We are starting to work our way through some SQL examples
which feel a bit dry. It's also strange that we are working our way through SQL
syntax and techniques when we are using an ORM like SQLAlchemy to help abstract
us away from SQL's declarative-programming mannerisms.

### Tip-of-the-week? ###

One of my favorite tools right now is the
[Windows Subsystem for Linux](https://msdn.microsoft.com/en-us/commandline/wsl/faq#what-is-windows-subsystem-for-linux-wsl).
If you're like me and you find the standard windows development environment
difficult to work with, I highly recommend it as an alternative to installing
a Linux VM, dual booting, or using two separate machines. It makes working with
a lot of tools in this class (virtualenv, flask, google cloud platform, etc)
very simple, and a big
update known as the 
[Creator's Update](https://thenewstack.io/windows-10-creators-update-means-windows-subsystem-linux/)
is coming to make it work even more reliably.

Also if you're a Vim nut like me, you might find this site of
[Vim Koans](https://sanctum.geek.nz/arabesque/vim-koans/) to be pretty funny.
