# haskell-github-api
Implementation examples of
[package github-0.19](https://github.com/phadej/github)

# package docs

[hackage documentation](https://hackage.haskell.org/package/github)

The package is complex, so examples help familiarize users with some basics.
The samples packaged with the source code are not yet up-to-date and because some of source files have been renamed for ease of use and occasionally moved, spinning up new samples can be a challenge. Implementations are not obvious but can be quite simple since the API is strong, so these examples demonstrate simple use-cases to help others see how the latest code works.

# Getting started
Clone the repo, get dependences using stack build, and then
load scripts into ghci using commands like the following from the project root:
```
   $ stack ghci src/Main.hs
   *Main> main
```
Change the references to users and repos to match those that hold interest to you.
The examples use resolver: lts-11.7, so if this fails to meet your needs, adjust this setting in stack.yaml.
