# A Github Action to Render Quarto Documents

This repository stores the `quarto-render` [GitHub Actions](https://github.com/features/actions) for use with [Quarto](https://quarto.org/) projects. This action will call `quarto render` on the root directory of the repo. It also has example workflows for some common uses, typically centered around web publishing.

## Examples

* Rendering a `quarto` project with a `_freeze` directory and publishing the results to the `gh-pages` branch.
* Rendering a `quarto` project _without_ a `_freeze` directory and publishing the results to the `gh-pages` branch.
