## An Intro To An Intro

Book introductions are hard. As an author, you want to talk about so much, but
you're not quire sure how to communicate your vision clearly enough. While it
might seem that Chapter 1 should be heavily on the basic examples and easy
concepts, I was surprised about how much "process oriented" stuff was discussed.

The first few pages talk about why design is important, but the importance of
design often leads into the pros (and cons) of change.

> Changing requirements are the programming equivalent of friction and gravity
> they introduce forces that apply sudden and unexpected pressures that work
> against the best-laid plans.

Ending with:

> It is the need for change that makes design matter.

There's a pretty good TL;DR on design. We often design and write programming
as if it exists within a vaccum. However, weird stuff happens. Requirements
change. Companies rise and fall. We're starting to chase after this idea that
good code is adaptable. It survives evolution in many ways.

## Dependencies?

> Object-Oriented design is about managing Dependencies.

Interesting, but true. Dependency bloat in many ways could be considered bad
design.

## Starting Early

> In small applications, poor design is survivable...The problem with poorly
> designed small applications is that they grow up to be poorly designed big
> applications.

You might think: "Well, duh." However, I've seen this happen so much in the
professional world. Why is that? I think it comes down the developers (and
management) never taking the time to fix mistakes early on.

In essence: bad mistakes and design compound over time.

## We're Artists?

I've been after the idea that programmers are artists for awhile now. The idea
translates easy for me because of my musical and creative background. In what
way are programmers artists and designers?

Well, there are many actually. The specific art Sandi is getting at is this:

> Design is thus an art, the art of arranging code

Software Design is the art of arranging code. I like that a lot. We often view
not knowing how to implement something as the main problem in creating a
product. Yet, the implementation is only half the problem.

The thought translates really well to other mediums as well. I can know how to
play certain guitar chords. However, its the dynamics and arrangement of those
chords that really matters. Sometimes the best songs in the world are simple
chord progressions that have the right arrangement. I'm starting to learn the
same can come out of programming.

## Put It Off

> The purpose of design is to allow you to do design later and its primary goal
> is to reduce the cost of change.

Again, I think we think of design as a one time thing. Just design up front
(more on that later) and program away! This sometimes works, but you get lost
pretty quickly if its a big project. We want to design to design later.

That's weird to say.

## Too Much Design?

> Pattern misapplication results in complicated and confusing code but this
> result is not the fault of the pattern itself. A tool cannot be faulted for
> its use, the user must master the tool.

Design Patterns are really cool if applied correctly. However, just going
overkill on patterns in a project doesn't make it good. They're tools.

Again:

> Knowing how software should look when it's done does not cause it to build
> itself; applications come into existence because some programmer applied
> the tools. The end result...reflects its programmer's experience with with
> the tools of design.

## Design Failure

Sandi's exposition on design failure in this chapter was especially
enlightening. The reason being is she covered three kinds of people:

* Those who don't design
* Those who over-design (see above)
* Those who separate design and programming

### Programmers Who Don't Design

Usually say: "Yes I can add that feature, but it will break everything."

### Programmers Who Over-Design

Usually say: "No, I can't add that feature; it wasn't designed to do that."

### Programmers Who Separate Programming and Design

Usually say: "Well, I can certainly write this, but its not what you really want
and you will eventually be sorry."

This one hit home for me. I was part of a team that usually ended up saying
that to a client. It gave our app a lack of vision and we spent a lot of time
rewriting numerous features.

This is because we designed around a document. We didn't account for change.
We were just trying to finish the job. Unfortunately, we ended up losing money
on the project because of it.

## A Thought on Agile Programming

Hey Sandi, describe Agile in two tweets!

> Agile believes that the most cost effective way to produce what the customer
> really wants is to collaborate with them, building software one small bit at
> a time such that each delivered bit has the opportunity to alter ideas about
> the next.

Ok, that was pretty good.

This is a pretty pretty translation of the agile manifesto. I always think of
agile programming as an abstract thought. However, its influence (as a thought)
on our programming can be huge. Agile and Object-Oriented programming play
really well into each other. If we properly design and implement our
applications, we can easily work together with clients in an Agile manner.
One of the biggest parts of the Agile client relationship is that change
is more frequent, but more up front. We can process that feedback quickly
with Object-Oriented design.

## Do This At Your Own Risk

Here's an interesting case:

> Sometimes the value of having the feature right now is so great that
> it outweighs any future increase in costs.

This is really good, right? What about other cases? How do we handle them?

> When the act of design prevents software from being delivered on time, you
> have lost.

This is a bit bleak, but really good. We want to find that sweet spot of design
and programming. Knowing that range comes with practice, but we'll see that
having a natural eye for it allows you to do both at the same time. You start
to think about design while also implementing it.

However, there's going to be a point where you have to stop designing and
start delivering the product. 
