# haskell-github-api
Implementation examples of
[package phadej/github release 0.22](https://github.com/phadej/github)

# package docs

[hackage documentation](https://hackage.haskell.org/package/github)

The package is complex, so simple implementation examples help familiarize users with some basics.

# Getting started
Clone the repo, get dependences using stack build, and then
load scripts using commands like the following from the project root:
```
$ stack runghc src/ShowWatchedByMe.hs
```
Change the references to users and repos to match those that hold interest to you.
The examples use resolver: lts-14.6, so if this fails to meet your needs, adjust this setting in stack.yaml.
