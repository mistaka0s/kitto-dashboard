# Generating this project

This project was generated in docker by using the kitto framework to generate a new dashboard.

The instructions below allows you to generate a new dashboard in the current directory using docker.

1. Get a container with Elixir and NPM installed.
    ```
    local$ docker run --rm -it -v `pwd`:/dashboard zorbash/kitto bash
    ```

1. Get the latest code from [Kitto](https://github.com/kittoframework/kitto/tags). (`0.6.0` at the time of writing.)

    ```
    docker# mix archive.install https://github.com/kittoframework/archives/raw/master/kitto_new-0.6.0.ez
    docker# cd /dashboard
    ```

1. Create a new dashboard. Don't fetch dependencies as we'll build dependencies later.

    ```
    docker#  mix kitto.new KittoDashboard
    ```

    Output:
    ```
    * creating KittoDashboard/config/config.exs
    * creating KittoDashboard/config/dev.exs
    * creating KittoDashboard/config/prod.exs
    * creating KittoDashboard/rel/config.exs
    * creating KittoDashboard/rel/plugins/compile_assets_task.exs
    * creating KittoDashboard/mix.exs
    * creating KittoDashboard/README.md
    * creating KittoDashboard/.gitignore
    * creating KittoDashboard/Dockerfile
    * creating KittoDashboard/.dockerignore
    * creating KittoDashboard/Procfile
    * creating KittoDashboard/elixir_buildpack.config
    * creating KittoDashboard/lib/kittodashboard.ex
    * creating KittoDashboard/dashboards/error.html.eex
    * creating KittoDashboard/dashboards/layout.html.eex
    * creating KittoDashboard/dashboards/sample.html.eex
    * creating KittoDashboard/dashboards/rotator.html.eex
    * creating KittoDashboard/dashboards/jobs.html.eex
    * creating KittoDashboard/widgets/clock/clock.js
    * creating KittoDashboard/widgets/clock/clock.scss
    * creating KittoDashboard/widgets/graph/graph.js
    * creating KittoDashboard/widgets/graph/graph.scss
    * creating KittoDashboard/widgets/image/image.js
    * creating KittoDashboard/widgets/image/image.scss
    * creating KittoDashboard/widgets/list/list.js
    * creating KittoDashboard/widgets/list/list.scss
    * creating KittoDashboard/widgets/number/number.js
    * creating KittoDashboard/widgets/number/number.scss
    * creating KittoDashboard/widgets/meter/meter.js
    * creating KittoDashboard/widgets/meter/meter.scss
    * creating KittoDashboard/widgets/text/text.js
    * creating KittoDashboard/widgets/text/text.scss
    * creating KittoDashboard/widgets/time_took/time_took.js
    * creating KittoDashboard/widgets/time_took/time_took.scss
    * creating KittoDashboard/jobs/phrases.exs
    * creating KittoDashboard/jobs/convergence.exs
    * creating KittoDashboard/jobs/buzzwords.exs
    * creating KittoDashboard/jobs/random.exs
    * creating KittoDashboard/jobs/stats.exs
    * creating KittoDashboard/assets/javascripts/application.js
    * creating KittoDashboard/assets/stylesheets/application.scss
    * creating KittoDashboard/public/assets/favicon.ico
    * creating KittoDashboard/public/assets/images/placeholder.png
    * creating KittoDashboard/webpack.config.js
    * creating KittoDashboard/.babelrc
    * creating KittoDashboard/package.json

    Fetch and install dependencies? [Yn] n

    We are all set! Run your Dashboard application:

        $ cd KittoDashboard
        $ mix deps.get
        $ mix kitto.server

    You can also run your app inside IEx (Interactive Elixir) as:

        $ iex -S mix


    Kitto uses an assets build tool called webpack
    which requires node.js and npm. Installation instructions for
    node.js, which includes npm, can be found at http://nodejs.org.

    After npm is installed, install your webpack dependencies by
    running inside your app:

        $ npm install
    ```

1. Overwrite the generated `Dockerfile` with the one contained in this repo.
