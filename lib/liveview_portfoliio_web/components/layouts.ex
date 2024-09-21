defmodule LiveviewPortfoliioWeb.Layouts do
  @moduledoc """
  This module holds different layouts used by your application.

  See the `layouts` directory for all templates available.
  The "root" layout is a skeleton rendered as part of the
  application router. The "app" layout is set as the default
  layout on both `use LiveviewPortfoliioWeb, :controller` and
  `use LiveviewPortfoliioWeb, :live_view`.
  """
  use LiveviewPortfoliioWeb, :html

  embed_templates "layouts/*"

   def current_year do
    DateTime.utc_now().year
  end
end
