---
layout: post
title: Server Woes
---

### What did you do this past week? ###

These past two weeks our team has been working on and completing phase #1 of our
project. All in all, we spent a lot of time watching tutorials, becoming
familiar with tools, and trying to get a better understanding of what was
actually required in this phase of the Project.

My main areas of focus were mastering the Google Cloud toolset and building the
rudimentary Flask app necessary to serve our static web pages. Up until the end
of this phase, I thought I had a good grasp on this tasks, but I was sorely
mistaken.

The first issue was figuring out how to integrate our app's frontend
with the Flask backend. The
frontend team's workflow was so riddled with different tools and libraries that
I was unsure how to get their work served by the backend. I knew I needed
to host any static files or html templates they used, but I was unsure if any
of their tools manipulated their source files at runtime in a way that I needed
to replicate. Did
I need to write some kind of config file to install those dependencies on the
server? Did I need to configure how our server was running so that their tools
could run in parallel with the Flask framework? We eventually figured out
that all of the intimidating frontend tools weren't doing anything at runtime
and any dependencies were being merged into a single minified Javascript file.
This meant that integrating the frontend and backend together was simple. We
just needed to serve up their html and host this minified Javascript file.

Our second issue happened hours before the project was due which sent our team
into a mild panic. Our website would run just fine locally but would fail to
load from the server. To make matters worse, once we deployed this broken
build, we encountered error after error trying to get it taken offline so that
we could try and redeploy from a clean state. Eventually, we discovered the
problem. Due to a mistake when refactoring our project, Google's
App Engine couldn't locate our Flask app. Without an app to run, our server
was unable to serve our static pages, so our site became unreachable.
After resolving those issues, a
faulty startup file was causing a local test server to bootup whenever we'd
deploy our app which prevented the real app from getting access to a port that it
needed. This prevented our app from completely deploying, and was rather difficult
to debug. We managed to pinpoint the issue using the
server's error logs, which were exploding with a
stream of error messages saying that it couldn't connect to the port that it
needed.

Finally, once everything properly deployed, we ran into a bit of
an wall. Because we had deployed some half finished versions of the
app to test our deployment workflow, Google had cached some old, incorrect
javascript files. This meant that even after we had deployed the finished
app, most people would still see the old, broken version. After much research
and prayer to the Google Cloud gods, we realized there would be no way to
invalidate the old, cached, incorrect javascript files; we would just have to
wait for the cache to expire. This wasn't a huge issue,
because they were scheduled to expire within 6 hours, but the stress of not
being able to correct our mistake was tough to handle.

At the end of the day, we got everything working, and I am extremely
proud of all that the team accomplished this first phase.

### What will you do next week? ###

We are going to kick off the next phase 
with some very necessary Scrum meetings.
We need to take time to reflect on the successes and failures of the previous
phase, and use that to plan out our next phase.
I expect that this next phase will be focused on
our database so our backend team will be much busier this time
around. I am excited to see how we will do.

### What's my experience of the class? ###

The class is going well. We are starting to talk about relational algebra and
databases which I find much more interesting than talking about python features.

Our newest set of readings from the *Refactoring* book are a bit boring though.

### Tip-of-the-week? ###

An interesting issue was reported on VSCode's Github this week that is worth
looking at. [link to issue](https://github.com/Microsoft/vscode/issues/22900).

Some have argued that this is an example of how building desktop applications
(like VSCode) using web app technology is poor design. 

I don't know if I fall quite under that camp, but hearing that some applications,
like VSCode are built using web technologies does strike me as odd.
