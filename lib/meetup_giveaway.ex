defmodule MeetupGiveaway do
  @doc """
  Returns a random attendee from a json file structured as

  ```json
  {
    "attendees": ["Name 1", "Name 2" ...]
  }
  ```

  To generate an array of meetup attendees navigate to
  the event page, open browser dev tools and run the
  following code:

  ```javascript
  $('.member-name a.unlink').toArray().map(x => x.text)
  ```
  """
  def pick_random_attendee do
    "attendees.json"
    |> File.read!()
    |> Poison.decode!()
    |> Map.fetch!("attendees")
    |> Enum.random()
  end
end
