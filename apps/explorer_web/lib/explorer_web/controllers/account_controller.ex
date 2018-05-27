defmodule ExplorerWeb.AccountController do
  use ExplorerWeb, :controller

  alias Explorer.Chain

  def index(conn, params) do
    # accounts = Chain.list_accounts(necessity_by_association: %{transactions: :optional}, pagination: params)

    render(conn, "index.html", accounts: "accounts")
  end

end
