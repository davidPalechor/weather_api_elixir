defmodule WeatherApiElixirWeb.Router do
  use WeatherApiElixirWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WeatherApiElixirWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "v1/", WeatherApiElixirWeb do
    pipe_through :api

    get "weather/", PageController, :weather

  end

  # Other scopes may use custom stacks.
  # scope "/api", WeatherApiElixirWeb do
  #   pipe_through :api
  # end
end
