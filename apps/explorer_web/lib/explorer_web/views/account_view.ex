defmodule ExplorerWeb.AccountView do
  use ExplorerWeb, :view

  import Math.Enum, only: [mean: 1]

  alias Explorer.Chain.{Account}

  @dialyzer :no_match

  def formatted_last_update(%Account{updated_at: timestamp}) do
    Timex.format!(timestamp, "%b-%d-%Y %H:%M:%S %p %Z", :strftime)
  end

end

