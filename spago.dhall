{ name = "float32"
, license = "BSD-3-Clause"
, dependencies =
  [ "gen"
  , "maybe"
  , "prelude"
  , "psci-support"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, repository = "https://github.com/purescript-contrib/purescript-float32.git"
}
