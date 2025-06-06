defmodule SlaxWeb.ChatRoomLive do
  use SlaxWeb, :live_view

  def render(assigns) do
    person = %{age: 17, name: "Peter"}
    # this should be done in mount/3
    assigns = assign(assigns, :person, person)


    ~H"""
    <div>Welcome to the chat!</div>
    <div>
      <%= if @person.age >= 18 do %>
        <span> Adult </span>
      <% else %>
        <span> Child </span>
      <% end %>
    </div>
    """
  end
end
