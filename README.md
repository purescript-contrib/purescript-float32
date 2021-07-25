# float32

[![CI](https://github.com/purescript-contrib/purescript-float32/workflows/CI/badge.svg?branch=main)](https://github.com/purescript-contrib/purescript-float32/actions?query=workflow%3ACI+branch%3Amain)
[![Release](https://img.shields.io/github/release/purescript-contrib/purescript-float32.svg)](https://github.com/purescript-contrib/purescript-float32/releases)
[![Pursuit](https://pursuit.purescript.org/packages/purescript-float32/badge)](https://pursuit.purescript.org/packages/purescript-float32)
[![Maintainer: athanclark](https://img.shields.io/badge/maintainer-athanclark-teal.svg)](https://github.com/athanclark)
[![Maintainer: jamesdbrock](https://img.shields.io/badge/maintainer-jamesdbrock-teal.svg)](https://github.com/jamesdbrock)

Provides the
[32-bit single-precision floating-point](https://en.wikipedia.org/wiki/Single-precision_floating-point_format)
data type `Float32` and operations.

`Float32` is a `newtype` wrapper around `Number`, where
entering into the type can only be done with
[`Math.fround()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/fround).

## Installation

Install `float32` with [Spago](https://github.com/purescript/spago):

```sh
spago install float32
```

## Quick start

The quick start hasn't been written yet (contributions are welcome!). The quick start covers a common, minimal use case for the library, whereas longer examples and tutorials are kept in the [docs directory](./docs).

## Documentation

`float32` documentation is stored in a few places:

1. Module documentation is [published on Pursuit](https://pursuit.purescript.org/packages/purescript-float32).
2. Written documentation is kept in the [docs directory](./docs).
3. Usage examples can be found in [the test suite](./test).

If you get stuck, there are several ways to get help:

- [Open an issue](https://github.com/purescript-contrib/purescript-float32/issues) if you have encountered a bug or problem.
- Ask general questions on the [PureScript Discourse](https://discourse.purescript.org) forum or the [PureScript Discord](https://discord.com/invite/sMqwYUbvz6) chat.

## Contributing

You can contribute to `float32` in several ways:

1. If you encounter a problem or have a question, please [open an issue](https://github.com/purescript-contrib/purescript-float32/issues). We'll do our best to work with you to resolve or answer it.

2. If you would like to contribute code, tests, or documentation, please [read the contributor guide](./CONTRIBUTING.md). It's a short, helpful introduction to contributing to this library, including development instructions.

3. If you have written a library, tutorial, guide, or other resource based on this package, please share it on the [PureScript Discourse](https://discourse.purescript.org)! Writing libraries and learning resources are a great way to help this library succeed.

## Development

Run the tests with

```sh
spago -x test.dhall test
```

