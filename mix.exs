defmodule KittoDashboard.Mixfile do
  use Mix.Project

  def project do
    [app: :kitto_dashboard,
     version: "0.0.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [applications:
      [:logger,
       :grafana,
       :kitto
      ]
    ]
  end

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:kitto, "~> 0.6.0"},
     {:grafana, "~> 0.1.0" },
     {:poison, "~> 3.0", override: true}
    ]
  end
end
