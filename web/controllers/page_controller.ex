defmodule HotColdBot.PageController do
  use HotColdBot.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
