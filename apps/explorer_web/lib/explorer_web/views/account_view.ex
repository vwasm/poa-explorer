defmodule ExplorerWeb.AccountView do
  use ExplorerWeb, :view

  import Math.Enum, only: [mean: 1]

  alias Explorer.Chain.{Address}

  @dialyzer :no_match

  def formatted_last_update(%Address{updated_at: timestamp}) do
    Timex.format!(timestamp, "%b-%d-%Y %H:%M:%S %p %Z", :strftime)
  end

  def format_balance(%Address{fetched_balance: balance}) do
    try do 
        format_wei_value(balance, :ether)
    rescue
        FunctionClauseError -> format_wei_value(0, :ether)
    end
  end
end

