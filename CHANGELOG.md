# Changelog

Notable changes to this project are documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Breaking changes:

New features:

Bugfixes:

Other improvements:

## [v2.0.0](https://github.com/purescript-contrib/purescript-float32/releases/tag/v2.0.0) - 2022-04-27

Breaking changes:
- Migrate FFI to ES modules (#8 by @JordanMartinez)

## v1.0.0 2021-06-23

Thank you Athan Clark for donating this package to __purescript-contrib__.

Remove the `Generic` instance of `Float32`, it’s no longer needed. We don't
expect this change to break any dependent code.

Move the testing dependencies to `test.dhall`.
