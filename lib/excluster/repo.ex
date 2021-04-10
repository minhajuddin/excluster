defmodule Excluster.Repo do
  use Ecto.Repo,
    otp_app: :excluster,
    adapter: Ecto.Adapters.Postgres
end
