defmodule Chat2.Repo do
  use Ecto.Repo,
    otp_app: :chat2,
    adapter: Ecto.Adapters.Postgres
end
