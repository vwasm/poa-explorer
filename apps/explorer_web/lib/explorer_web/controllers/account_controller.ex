defmodule ExplorerWeb.AccountController do
  use ExplorerWeb, :controller

  alias Explorer.Chain

  def index(conn, params) do
    accounts = Chain.list_accounts(pagination: params)

    render(conn, "index.html", accounts: accounts)
  end

  def code(conn, params) do
    IO.inspect(params)
    redirect(conn, to: account_code_path(conn, :code, params))
  end

end
