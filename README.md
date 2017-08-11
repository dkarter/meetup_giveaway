# MeetupGiveaway

Returns a random attendee from an event url on meetup.com

Usage (from `iex -S mix`):

  ```elixir
  iex> MeetupGiveaway.pick_random_attendee("https://www.meetup.com/ChicagoElixir/events/241965932/")
  # => And the winner is :: "Some Name"
  ```

## Running from shell

```bash
mix run -e 'MeetupGiveaway.pick_random_attendee("https://www.meetup.com/ChicagoElixir/events/241965932/")'
```


## Requirements

- PhantomJS (`yarn global add phantomjs && phantomjs --wd`)
