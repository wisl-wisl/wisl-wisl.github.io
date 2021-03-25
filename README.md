# wisl.earth website

- [wisl.earth website](#wislearth-website)
  - [Development environment](#development-environment)
  - [Github Actions](#github-actions)

## Development environment

`docker-compose up` builds the `Dockerfile` and serves Jekyll locally on port `4000`.

`--livereload` is enabled, so that content updates are automatically refreshed

## Github Actions

Commits to the `source` branch trigger a Github action to deploy GitHub Pages