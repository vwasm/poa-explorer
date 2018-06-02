defmodule ExplorerWeb.AccountCodeController do
  use ExplorerWeb, :controller

  import ExplorerWeb.Chain

  alias Explorer.Chain

  def index(conn, params) do
      IO.inspect("Account Code Controller")
      render(conn, "index.html", code: "code")
    else
      {:error, :invalid} ->
        not_found(conn)

      {:error, :not_found} ->
        not_found(conn)
    end
end

