defmodule ToyAppWeb.MicropostHTML do
  use ToyAppWeb, :html

  embed_templates "micropost_html/*"

  @doc """
  Renders a micropost form.

  The form is defined in the template at
  micropost_html/micropost_form.html.heex
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true
  attr :return_to, :string, default: nil

  def micropost_form(assigns)
end
