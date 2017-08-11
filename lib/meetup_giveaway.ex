defmodule MeetupGiveaway do
  use Hound.Helpers

  @doc """
  Returns a random attendee from an event url on meetup.com

  Usage:

    ```elixir
    iex> MeetupGiveaway.pick_random_attendee("https://www.meetup.com/ChicagoElixir/events/241965932/")
    And the winner is :: "Some Name"
    ```
  """
  def pick_random_attendee(event_url) do
    scrape_attendees(event_url)
    |> Enum.random()
    |> IO.inspect(label: 'And the winner is:')
  end

  defp scrape_attendees(event_url) do
    Hound.start_session

    navigate_to(event_url)
    attendees =
      Hound.Helpers.Page.find_all_elements(:css, ".member-name a.unlink")
      |> Enum.map(&Hound.Helpers.Element.inner_text/1)

    Hound.end_session

    attendees
  end
end
