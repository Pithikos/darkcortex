# Portfolio

Using Aperture template for Jekyll.


## Setup

1. Add your site and author details in `_config.yml`.
2. Get a workflow going to see your site's output (with [CloudCannon](https://app.cloudcannon.com/) or Jekyll locally).

## Develop

Install the dependencies with [Bundler](http://bundler.io/):

    gem install bundle
    bundle install --path vendor/bundle

Run `jekyll` commands through Bundler to ensure you're using the right versions:

    bundle exec jekyll serve

## Editing

Aperture is already optimised for adding, updating and removing photos and navigation in CloudCannon.

### Navigation

* Exposed as a data file to give clients better access.
* Set in the *Data* / *Navigation* section.

### Photo Gallery

* Populated using front matter array in `index.html`.
