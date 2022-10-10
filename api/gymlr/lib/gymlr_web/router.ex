defmodule GymlrWeb.Router do
  use GymlrWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GymlrWeb do
    pipe_through :api
    get "/", MainController, :index

    get "/supps", SuppController, :index
    get "/supps/health", HealthController, :index
    get "/supps/boost", BoostController, :index
    get "/supps/muscles", MusclesController, :index
  end
end
