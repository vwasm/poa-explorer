defmodule ExplorerWeb.AccountController do
  use ExplorerWeb, :controller

  alias Explorer.Chain

  def index(conn, params) do
    accounts = Chain.list_accounts(pagination: params)

    render(conn, "index.html", accounts: accounts)
  end

  def show(conn, %{"id" => account_id}) do
    IO.inspect("from account_controller")
    IO.inspect(conn)
    render(
      conn,
      "show.html",
      code: "ewasm classic yo"
    )
    else
      :error ->
        not_found(conn)

      {:error, :not_found} ->
        not_found(conn)
    end
end
