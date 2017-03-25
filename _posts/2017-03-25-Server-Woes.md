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
of this phase, I thought I had a good grasp on Flask, the Google Cloud toolset,
how our project would interact with it, but I was sorely mistaken.

The first issue was figuring out how to integrate our app's frontend
with the Flask backend so that we could host our app on Google Cloud Platform.
Prior to this integration, I had a trivial Flask app deployed to our servers,
so I was under the impression that I had a handle of it. It turned out that the
frontend team's workflow was so riddled with different tools and libraries that
I was unsure what needed to be done to get their work served by the backend. Did
I need to write some kind of config file to install those dependencies on the
server? Did I need to configure how our was running so that their tools could
run in parallel with the backend's Flask framework? We eventually figured out
that all of the intimidating frontend tools weren't doing anything at runtime
and any dependencies were being merged into a single minified Javascript file.
This meant that integrating the frontend and backend together was simple. We
just needed to serve up their html and host this minified Javascript file.

Our second issue happened hours before the project was due which sent our team
into a mild panic. Our website would run just fine locally, but when we'd deploy
it we'd encounter absurdly long deploy times, and then our website would fail to
load from the server. To make matters worse, once we deployed this broken
website, we encountered error after error trying to get it taken offline so that
we could try and redeploy from a clean slate. Eventually, we discovered the
problem. Due to a restructuring of our project's directory structure, Google's
App Engine couldn't locate our Flask app. Without an app to run, our server
was unable to serve our static pages, so our site became unreachable.
Unfortunately we weren't out of the woods yet. After resolving those issues, a
faulty *main.py* file was causing a local test server to start whenever we'd
deploy our app which prevented real app from getting access to a port that it
needed. This was prevented our app from deploying, and was rather difficult
to debug. The only reason we found the issue was because a teammate found a way
to access the server's error logs and we saw that we were getting a constant
stream of error messages from our app saying that it couldn't connect to the
port that it needed.

Finally, once we finally had everything properly deployed, we ran into a bit of
an unsolvable issue. Because we had deployed some half finished versions of the
app to test our deployment workflow, Google had cached some old, incorrect
javascript files which meant that even after we had deployed the finished
app, most people would still see the old, broken version. After much research
and prayer to the Google Cloud gods, we realized there would be no way to
invalidate the old, cached, incorrect javascript files; we would just have to
wait for their expiration dates to expire. This ended up not being a huge issue,
because they were scheduled to expire in only a few hours, but the stress of not
being able to correct our mistake was tough to handle.

At the end of the day, we finally got everything working, and I am extremely
proud of all of the work that my team put into this first phase.

### What will you do next week? ###

Next week, we are going to get started on the next phase. We are going to kick
things
off with some Scrum meetings over the weekend to reflect on our previous phase
and plan out the next phase. I expect that this next phase will be focused on
our backend database and that our backend team will be much busier this time
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

