defmodule BankaappApiWeb.Router do
  use BankaappApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", BankaappApiWeb do
    pipe_through :api

    post "/auth/signup", UserController, :create
    post "/auth/signin", UserController, :signin
  end
end
