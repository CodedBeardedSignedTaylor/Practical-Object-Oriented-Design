## Did You Get The Message?

> The foundation of an object-oriented system is the message, but the most visible
> organization structure is the class.

About five years ago, I found myself sitting in my first programming class at Auburn University. The language of choice for the class was Java. The programming methodology of choice was Object-Oriented programming.

I was thrown both of these concepts at once. This isn't bad in any sense. The two work together quite well and play into the core concepts. One thing that I really missed out on mentally was the concept of message passing. I always assumed it was a general programming concept. In a lot of ways, it is. However, in Object-Oriented programming, this interplay is incredibly important.

The examples that run through the chapters are really great examples of foundation vs vistualization. We'll see the messages become more apparent when we begin to break down and encapsulate our functionality.  

## Programming Skills != Design Skills

> The problem is not one of technical knowledge of but of organization; you know how to write the code but not where to put it.

This is a really great point. Design is the art of organizing your code. We often think as problem as either design or programming. Sometimes they're both. In fact, they're often both. A problem might initially be a programming problem but later becomes a design problem when refactoring rolls around.

## True Code

We briefly talk about this idea of TRUE code. Let's talk about what it involves:

* Transparent - The consequence of change should be **obvious** in the code that is changing and in distant code it relies upon.  
* Reasonable - The cost of any change should be **proportional** to the benefits the change achieves.
* Usable - existing code should be usable in new and unexpected contexts
* Exemplary - The code itself should encourage those who change it to perpetuate these qualities.

Not much to say on this right now. Just think its interesting. Transparent code really sticks out to me initially. The examples show this as well.

## Single Responsibility Classes

> A class should do the smallest possible useful thing; that is, it should have
> a single responsibility.

This is certainly mentioned a lot in overviews of OO programming, but how many
times do we start to exercise those muscles? Often times, "it works" is all
we can manage when making something new. Single responsibility has a lot more
power than we think.

> Applications that are easy to change consist of classes that are easy to reuse.

Again, basic OO stuff. Still noteworthy.

> Duplicated code leads to additional maintenance and increases bugs.

> Because change is inevitable coding in a changeable style has big future payoffs.

Starting to get more practical here. Organizing our code well does more than
makes OO purists happy. Good OO practices lead to developer (and eventually
client) satisfaction. 
