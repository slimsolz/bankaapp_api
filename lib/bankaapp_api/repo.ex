defmodule BankaappApi.Repo do
  use Ecto.Repo,
    otp_app: :bankaapp_api,
    adapter: Ecto.Adapters.Postgres
end
