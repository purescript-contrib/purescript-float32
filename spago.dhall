{ name = "float32"
, license = "BSD-3-Clause"
, dependencies =
  [ "effect"
  , "gen"
  , "maybe"
  , "prelude"
  , "psci-support"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, repository = "https://github.com/jamesdbrock/purescript-float32.git"
}
