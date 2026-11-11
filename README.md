[![CodeFactor](https://www.codefactor.io/repository/github/lanlords/docs/badge)](https://www.codefactor.io/repository/github/lanlords/docs)
[![GitHub deployments](https://img.shields.io/github/deployments/lanlords/docs/github-pages?label=deployment)](https://github.com/lanlords/docs/deployments)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

# Lanlords Docs

Public documentation website for Lanlords. Contains various game installation instructions and solutions for common problems. The documentation is currently only available in Dutch. Please create pull request if information is missing or incorrect! The docs can be found at [docs.lanlords.nl](https://docs.lanlords.nl).

## Development

Use Ruby 3.4 and install the dependencies from `Gemfile.lock` before running Jekyll:
```
gem install bundler -v 4.0.22
bundle install
```

To test out changes locally you can run the embedded Jekyll webserver which reloads at file changes:
```
bundle exec jekyll serve
```
By default Jekyll when running the `serve` command is reachable on [127.0.0.1:4000](http://127.0.0.1:4000/).

Run the Finals page checks with:
```
node --test test/finals.test.js
```

## Deployment

In the repository's **Settings > Pages > Build and deployment**, set **Source** to
**GitHub Actions**. The [Pages workflow](.github/workflows/pages.yml) installs the
locked gems, builds with Jekyll 4, and deploys on pushes to `main` or manual runs.
The built-in "Deploy from a branch" builder uses GitHub Pages' bundled Jekyll 3
and cannot satisfy this project's dependencies.

## License

[MIT license](LICENSE)
