defmodule Html2mdEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :html2md_ex,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.25.0"}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "priv", "native", "c_src"], 
      maintainers: ["Your Name"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/username/repo"}
    ]
  end


end