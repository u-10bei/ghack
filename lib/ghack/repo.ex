defmodule Ghack.Repo do
  use Ecto.Repo,
    otp_app: :ghack,
    adapter: Ecto.Adapters.Postgres
end
