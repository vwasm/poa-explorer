defmodule ExplorerWeb.AccountController do
  use ExplorerWeb, :controller

  alias Explorer.Chain
  import EthereumJSONRPC, only: [fetch_code_by_address: 1]

  def index(conn, params) do
    accounts = Chain.list_accounts(pagination: params)

    render(conn, "index.html", accounts: accounts)
  end

  def show(conn, %{"id" => account_id}) do
    {:ok, contract_code} = fetch_code_by_address(account_id)

    render(
      conn,
      "show.html",
      code: contract_code
    )
    else
      :error ->
        not_found(conn)

      {:error, :not_found} ->
        not_found(conn)
    end
end
