# MeetupGiveaway

Returns a random attendee from a JSON file structured as

```json
{
  "attendees": ["Name 1", "Name 2"]
}
```

To generate an array of meetup attendees navigate to
the event page, open browser dev tools and run the
following code:

```js
$('.member-name a.unlink').toArray().map(x => x.text)
```


## Running

Open the project in `iex`:

```bash
iex -S mix
```

Then run the following command:

```elixir
MeetupGiveaway.pick_random_attendee
```
