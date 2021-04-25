let conf = ./spago.dhall

in conf // {
, dependencies = conf.dependencies #
  [ "quickcheck"
  , "quickcheck-laws"
  ]
, sources = conf.sources # [ "test/**/*.purs" ]
}

