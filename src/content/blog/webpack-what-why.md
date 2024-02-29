---
title: 'Webpack - What is it? why we use it? '
description: ''
pubDate: 'Feb 28 2024'
heroImage: '/blog-placeholder-1.jpg'
---

this article uses [Official Webpack](https://webpack.js.org/) website as reference.

Official docs are [here](https://webpack.js.org/concepts/)

## What is Webpack?

in simplest term, webpack is a module bundler, for javascript projects.

## Why to use Webpack?

It bundles together all the JS code, static files like css and images and produces a bundle that we can easily deploy and serve.

It becomes easier to manage and distribute JS.

---

When webpack processes your application, it internally builds a dependency graph from one or more entry points and then combines every module your project needs into one or more bundles, which are static assets to serve your content from.

Webpack produces a source map after bundling our files together.

_Since version 4.0.0, webpack does not require a configuration file to bundle your project_

**webpack.config.js** is the main config file used when running webpack.

the config file is like a blueprint as to how to bundle up our package.

There is a lot to do here, but as of now, all technologies like React/Next come with their own bundler and set of actions to build.

It is good to know how a bundler works, but it is not useful to create one from scratch.

I might dive into bundler like [esbuild](https://esbuild.github.io/) for bundling backend projects/tech stack like MERN or Node Express MVC .

Done for now.
