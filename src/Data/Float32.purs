module Data.Float32
  ( Float32
  , fromNumber
  , fromNumber'
  , toNumber
  ) where

import Prelude
  ( class Eq
  , class Ord
  , class Show
  , class Semiring
  , class Ring
  , class Bounded
  , class EuclideanRing
  , class CommutativeRing
  , class DivisionRing
  , top
  , bottom
  , (==)
  , (||)
  )
import Data.Maybe (Maybe(..))

-- | [32-bit single-precision floating-point](https://en.wikipedia.org/wiki/Single-precision_floating-point_format)
-- | number.
newtype Float32 = Float32 Number

derive newtype instance eqFloat32 :: Eq Float32
derive newtype instance ordFloat32 :: Ord Float32
derive newtype instance semiringFloat32 :: Semiring Float32
derive newtype instance ringFloat32 :: Ring Float32
derive newtype instance commutativeringFloat32 :: CommutativeRing Float32
derive newtype instance euclideanringFloat32 :: EuclideanRing Float32
derive newtype instance divisionringFloat32 :: DivisionRing Float32
derive newtype instance showFloat32 :: Show Float32
instance boundedFloat32 :: Bounded Float32 where
  top = float32Top
  bottom = float32Bottom

foreign import float32Top :: Float32
foreign import float32Bottom :: Float32

-- | Uses `Math.fround()` to convert to a `Float32`.
-- | Returns `Nothing` when outside the range.
fromNumber :: Number -> Maybe Float32
fromNumber x =
  let
    r = fromNumberImpl x
  in
    if r == top || r == bottom then Nothing else Just (Float32 r)

-- | Uses `Math.fround()` to convert to a `Float32`.
-- | Returns *0.0* when outside the range.
fromNumber' :: Number -> Float32
fromNumber' x = case fromNumber x of
  Nothing -> Float32 0.0
  Just y -> y

foreign import fromNumberImpl :: Number -> Number

toNumber :: Float32 -> Number
toNumber (Float32 x) = x
