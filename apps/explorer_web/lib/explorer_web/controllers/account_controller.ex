defmodule ExplorerWeb.AccountController do
  use ExplorerWeb, :controller

  alias Explorer.Chain

  def index(conn, params) do
    accounts = Chain.list_accounts(pagination: params)

    render(conn, "index.html", accounts: accounts)
  end

  def show(conn, %{"id" => number, "locale" => locale}) do
    redirect(conn, to: account_code_path(conn, :index, locale, number))
  end

end
