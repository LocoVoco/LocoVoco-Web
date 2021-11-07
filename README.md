# LocoVoco Website

## Tools needed to generate website

```bash
# we use jekyll as a static site generator this gives us the functionality of using templates in our code.
# we are mainly using the functionality of the liquid template language https://shopify.github.io/liquid/
#   layouts basically a default template for our page
#   includes including html so we don't have to repeat ourselves
#   _config.yml includes custom variables that we want to use
gem install jekyll bundler
```

## Generating blog posts.

Blog posts are generated using pandoc to convert markdown to html file.
You should include the following metadata: (see feature-meetup-profile-06072021.md):

```
---
title: LocoVoco | Connect & meet new people
heading: Should the app prioritize the meetup or the profile?
date: June 6th 2021
---
```

```bash
# run the following command to generate the html
pandoc --standalone --template blog-template.html feature-meetup-profile-06072021.md -o feature-meetup-profile-06072021.html
```

## Building the site with jekyll.

```
jekyll build
jekyll build --watch
```