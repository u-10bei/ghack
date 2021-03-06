defmodule GhackWeb.Router do
  use GhackWeb, :router

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

  scope "/", GhackWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources "/locations", LocationController
  end

  # Other scopes may use custom stacks.
  # scope "/api", GhackWeb do
  #   pipe_through :api
  # end
end
