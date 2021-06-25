# A Github Action to Render Quarto Documents

This repository stores the `quarto-render` [GitHub Actions](https://github.com/features/actions) for use with [Quarto](https://quarto.org/) projects. This action will call `quarto render` on the root directory of the repo. It also has example workflows for some common uses, typically centered around web publishing.

## Examples


### Rendering a `quarto` project with `freeze: true` and publishing the results to the `gh-pages` branch:

If your quarto project has `freeze: true`, you can use this Github action to render your documents and publish your workflow to Github pages by using something like the following workflow:

```yaml
# .github/workflows/render-and-publish.yaml
name: Render and deploy Quarto files
on: 
  push:
  pull_request:

jobs:
  quarto-render-and-deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2

    - name: "Install Quarto and render"
      uses: pommevilla/quarto-render@main

    - name: "Deploy to gh-pages"
      uses: peaceiris/actions-gh-pages@v3
      if: github.ref == 'refs/heads/main'
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./_site
```

* See [here](https://github.com/pommevilla/friendly-dollop) for an example page that runs this workflow with `freeze: true` that has both Python and R code.
* Read more about using freeze in your Quarto project [here](https://quarto.org/docs/books/book-authoring.html?q=freeze#freezing).

### Installing Python or R dependencies 

< placeholder >
