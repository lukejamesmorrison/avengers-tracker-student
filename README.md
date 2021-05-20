# Avengers Tracker

HELP!

Against the best efforts of the Avengers, Thanos has successfully snapped the Infinity Gauntlet and elimitated 50% of the living creatures in the universe.  Fortunately, you, an experienced Ruby developer at WYWM receives a transmission from Avengers HQ detailing the whereabouts and status of humanity's last hope.  Using your **super** programming skills, you will build a tool to make sense of this final transmission. No pressure, but humanity is counting on you!

![The snap](https://media4.giphy.com/media/LOoaJ2lbqmduxOaZpS/giphy.gif)

## Initialization

Run the following command from within the project directory:
```bash
bin/setup
```
This will install the necessary dependencies.

### Task

You will need to create an `Avenger` class in `avengers.rb`.  This class will be initialized with `name`, `location` and `status` parameters and set those as instance variables (properties).

You will then need to create a `Tracker` class in `tracker.rb`.

#### Parse Transmission

The `get_avengers_from_transmission_file()` method will take the information stored in `transmission.txt` and store it into an instance variable `@avengers` as an array of `Avenger` objects. F.R.I.D.A.Y. thinks exploring the [File](https://ruby-doc.org/core-2.5.0/File.html#method-c-open) class is a good place to start.

#### Get Avengers Statuses

Now that we have the Avengers stored in a more coherent way, finding out how the team is doing is your next task. 

1. `get_alive_avengers()` should return an array of all avengers who's `status` is `Alive`.
2. `get_missing_avengers()` should return an array of all avengers who's `status` is `Missing`.
3.  `get_dead_avengers()` should return an array of all avengers who's `status` is `Dead`.

#### Where Are They?

Ok, now that we have assessed the damage we need to figure out where everyone is.  Your next task is to write a method to list the Avengers by their location. `get_avengers_by_location()` can do two things:
1. List all Avengers by their current location; and
2. List Avengers at a current location if you provide a location name as the optional parameter.

But what if we only want to find a single avenger?  Let's get their location using `find_avenger()`.  This will accept the Avenger's name (`Iron Man`) and return the name of their `location`.

*Hmm...where on Earth is Ant Man?*

![ant man in the quantum realm](https://thumbs.gfycat.com/EmotionalGoodEwe-size_restricted.gif)

## Testing

To run tests, run the following command from within the project directory:
```
rspec
```

If all tests pass, pat yourself on the back, then get your butt to Avengers HQ and help save the world!

## Trying It Out in Real Time

First, run the following command from within your project directory:

```bash
bin/start
```

We are now inside [IRB](https://ruby-doc.org/docs/ruby-doc-bundle/ProgrammingRuby/book/irb.html), an interactive Ruby shell for your terminal.  Next we will import our `Tracker` and `Avenger` classes and afterwards can interact with them normally using the Ruby language:

```ruby
# import class
require './lib/tracker.rb' # => true
require './lib/avenger.rb' # => true

# Create instance
tracker = Tracker.new

# call method
tracker.find_avenger('Iron Man') # => 'Titan'
```

