defmodule WeatherApiElixir.Repo do
  use Ecto.Repo,
    otp_app: :weather_api_elixir,
    adapter: Ecto.Adapters.Postgres
end
