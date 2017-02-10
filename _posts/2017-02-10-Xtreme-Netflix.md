---
layout: post
title: Xtreme Netflix
---

### What did you do this past week? ###

This past week I continued to keep ahead of the scheduled readings and began working on the Netflix project.

The readings were pretty straight forward a bit dull. The Javascript text continues to illuminate all of Javascript's
many quirks, and the more I read the more I'm glad I don't have to deal with Javascript on a day-to-day basis. I
refuse to be hyperbolic and say that the language is terrible, but there are so many quirks that could manifest
as sneaky little bugs that writing JS code makes me uneasy. The XP book seems to have come to a close and retrospectively
I think it teaches a lot of good practices. Anyone who follows the book dogmatically is signing up for a lot of
red tape and annoying micro-practices, but if they apply the principles in moderation there is a lot to be gained.

As for the Netflix project, my partner and I made a lot of good progress despite our time constraints.
I left town on Thursday to celebrate an early Valentines Day with plans to return on Sunday evening. At first,
I didn't think this would be an issue, but since we only have a week and a half to complete the project, we are
losing about a third of our free time to work together. With this in mind, my partner and I made a point are starting
strong and starting early. We devoted all of Monday to setting up infrastructure of our project (the Github repos, 
the Travis CI connection, the basic REPL structure, and some basic tests). On Tuesday we extended some of our basic tests,
wrote a cache generator, and implemented a naive prediction algorithm. We spent Wednesday writing a slightly more intelligent
prediction algorithm and restructuring some of our code so that cache files from the public test repo could be utilized.
By the end of those three days we had an RMSE of ~1.003169 which has relieved some of the pressure of lost time. Although
our solution isn't finished, we'e made significant progress and I'm confident that we can finish the assignment on time.

### What will you do next week? ###

Next week, my partner and I plan on using some of the more specialized caches to create a more intelligent prediction algorithm.
As well, we will need to start timing our implementation since the spec says that it needs to run in under a second.

### What's my experience of the class? ###

I am having a great experience in the class so far. Professor Downing did a good job explaining the assignment to the class,
which was a blesing because it confused me greatly at first. As well, because my team got started early, any lingering
questions we had we got answered in office hours without any hassle.

### Tip-of-the-week? ###

Every software engineer over the course of their academic and professional career will end up doing some mundane little task
over and over and then try to automate it away. Usually it takes much longer than they estimated and by
the end it feels more like a waste of time (especially when a peer shows them that what they wanted
to do could be accomplished in one line by piping between a series of foreign commands). This week I want to say that those
little scripts and tools that take way too long to automate are only a waste of time if the engineer lets themselves forget
how they did it. For me this meant creating a repository that consists entirely of the different shell scripts that I've
written.

In fact, I got to see the usefulness of this automation-toolbelt repo today. I wanted to write a script to help speed
up writing these blog posts by creating a properly named and titled skeleton file and placing it in the directory where all
of my blog posts live. Essentially I wanted to be able to type

`new_post.sh My New Blog Post`

in the command line and get a file named `<today's date>-My-New-Blog-Post.md` in the `_posts/` directory with the
with the same headers that I use for every blog post prewritten. To accomplish this I needed to know how to loop over
the arguments supplied to my script. Instead of poking around Stack Overflow for an answer I was able to look at how I
had previously accomplished a similar task in an old script which sped the task up tenfold.

For anyone curious, the final script can be found on my github in [this repo](https://github.com/scottnm/shell_scripts).

In summary, automate the boring parts of your work and aggregate it in a toolbelt somewhere so that you always have your
own personal reference.
