# Gissues

> Display open Github issues sorted by the oldest.

[![Build Status](https://travis-ci.org/nayed/gissues.svg?branch=master)](https://travis-ci.org/nayed/gissues)
[![Inline docs](http://inch-ci.org/github/nayed/gissues.svg?branch=master)](http://inch-ci.org/github/nayed/gissues)

## Usage
```console
$ bin/gissues <user> <project> [ count | 4 ]

Options:
-h, --help        show this help message and exit
-v, --version     show gissues' version
```

![](demo.gif)

## Installation
Assuming you have [elixir](http://elixir-lang.org) install:
```console
$ git clone https://github.com/nayed/gissues.git
$ cd gissues
$ mix deps.get
$ mix escript.build
```

This will create the `gissues` executable file in the `bin` directory

### Documentation
[API documentation](https://nayed.github.io/gissues/doc/api-reference.html)
