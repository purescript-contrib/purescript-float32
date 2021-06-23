let conf = ./spago.dhall

in conf // {
, dependencies = conf.dependencies #
  [ "effect"
  , "quickcheck"
  , "quickcheck-laws"
  ]
, sources = conf.sources # [ "test/**/*.purs" ]
}

