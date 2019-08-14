defmodule WeatherApiElixirWeb.PageController do
  use WeatherApiElixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def weather(conn, _params) do
    users = WeatherApiElixirWeb.Utils.weather_reporter('Bogota', 'co')
    json conn, users
  end
end
