defmodule BankaappApiWeb.Router do
  use BankaappApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BankaappApiWeb do
    pipe_through :api
  end
end
