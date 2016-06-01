## An Introduction

> A Single Object cannot know everything, so inevitably it will have to talk to
> another object.

This is a good basis to start out on. I think we sometimes equate monolithic apps
to basically be giant objects. In truth, they sort of are. However, they're made
of smaller objects that talk to each other.

> To collaborate, an object must know something about others. Knowing creates
> a dependency. If not managed carefully, these dependencies will strangle your application.

The idea of knowing about another object as a dependency is pretty cool. We
often think of a dependency being legit when the literal objects are connected.
However, its knowledge that seals the deal.

## Understanding Dependecies

> When one object changes, the other might be forced to change in turn.

The key word here is *might*. However, the chance of something changing (no
matter how minor) is something that we should be aware of and prepare for.

## Recogizing Dependecies

An object has a dependency when it knows

* The name of another class
* The name of a message that it intends to send to someone other than self
* The arguments that a message requires
* The order of those arguments

> Your design challenge is to manage dependencies so that each class has the fewest
> possible; a class should know just enough to do its job and not one thing more.

## Coupling Between Objects

> [The dependencies in the example] couple Gear to Wheel.

Looking at a piece of code where *both* objects are shown, you can trace the
dependencies pretty easily. What about things like `Gems` (Ruby) or `Crates` (Rust)?

> Alternatively, you could say that each coupling creates a dependency.

We're saying the same thing here, but its important to note about how large scale
frameworks and libraries work. Even if you use a library in one line of actual
"production" code, you've created a dependency between the library and your code.
You might use that library more in your app, but every usage creates a stronger
dependency.

The point of all this is to say that you should choose your dependencies carefully.

## Other Dependencies

> One especially destructive kind of dependency occurs where an object knows another
> who knows another who knows something; that is, where many messages are chained
> together to reach behavior that lives in a distant object.

This is a really big problem in most framework-based applications, right? We've
got a call stack that sometimes extends far into the dependencies that we use.
Stacking these things can be necessary, but its also dangerous. Buyer beware.

> Another entire class of dependencies is that of tests on code. In the world
> outside of this book, tests code first. They drive design.

We want our code to be dependent (or connected / covered) through tests, BUT....

> The natural tendency of "new-to-testing" programmers is to write tests that
> are too tightly coupled to code. This tight coupling leads to incredible
> frustration; the tests break every time the code is refactored, even when the
> fundamental behavior of the code does not change.

This is why Unit / Functional / Integration tests matter. They're focused on
different aspects of the code. For example, your unit tests could be green. Yet,
your functional tests are red. The underlying building blocks of your application
are stable, but the way you're interacting with them is not.

This also speaks against hard-coded tests.

## Writing Loosely Coupled Code

> Every dependency is like a little dot of glue that causes your class to stick to things
> it touches. A few dots are necessary, but apply too much glue and your application will
> harden into a solid block.

### Inject Dependencies

Before looking at the code example, take a look at this:

> Referring to another class by its name creates a major sticky spot.

Sandi's example here is just really killer. It highlights the process of creating
a dependency injection within some code. Its best left to read.

### Isolate Dependencies

The theme of dependencies that Sandi goes after in this is that its best when
an object knows *just enough*. Yet, how much is enough?  

> Its best to break all unnecessary dependencies, but, unfortunately, while this
> always is technically possible, it may not be actually possible.

We want to be aware of what dependencies are and how they function. We don't
want to bloat objects with lots of dependencies and nesting. They'll become nightmares
to maintain and improve.

> If you are mindful of dependencies and develop a habit of routinely injecting them,
> your classes will naturally be loosely coupled. If you ignore  this issues and let
> the class references fall where they amy, you application will be more like a big
> woven mat rather than a set of independent objects.

### Remove Argument-Order Dependencies

> When you send a message that requires arguments, you, as the sender, cannot
> have knowledge of those arguments. This dependency is unavoidable.

> Many method signatures not only require arguments, but they also require that
> those arguments be passed in a specific, fixed order.

```ruby
class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    @chainring = args.fetch(:chainring, 40)
    @cog = args.fetch(:cog, 18)
    @wheel = args[:wheel]
  end

  ...
end  
```

## Managing Dependency Direction 
