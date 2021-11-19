module Data.Float32.Gen where

import Prelude ((<$>))
import Data.Float32 (Float32, fromNumber', toNumber)
import Control.Monad.Gen.Class (class MonadGen, chooseFloat)

chooseFloat32 :: forall m. MonadGen m => Float32 -> Float32 -> m Float32
chooseFloat32 a b = fromNumber' <$> chooseFloat (toNumber a) (toNumber b)
