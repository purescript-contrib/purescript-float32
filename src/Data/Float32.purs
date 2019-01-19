module Data.Float32
  ( Float32, fromNumber, toNumber
  ) where

import Prelude (class Eq, class Ord, class Show, class Semiring, class Ring, class Bounded, class EuclideanRing, class CommutativeRing, class DivisionRing)
import Data.Generic.Rep (class Generic)

newtype Float32 = Float32 Number

derive instance genericeFloat32 :: Generic Float32 _
derive newtype instance eqFloat32 :: Eq Float32
derive newtype instance ordFloat32 :: Ord Float32
derive newtype instance semiringFloat32 :: Semiring Float32
derive newtype instance ringFloat32 :: Ring Float32
derive newtype instance commutativeringFloat32 :: CommutativeRing Float32
derive newtype instance euclideanringFloat32 :: EuclideanRing Float32
derive newtype instance divisionringFloat32 :: DivisionRing Float32
derive newtype instance boundedFloat32 :: Bounded Float32
derive newtype instance showFloat32 :: Show Float32


-- | Uses `Math.fround()` to convert to a 32bit float
foreign import fromNumber :: Number -> Float32

toNumber :: Float32 -> Number
toNumber (Float32 x) = x
