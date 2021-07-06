# LocoVoco Website

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