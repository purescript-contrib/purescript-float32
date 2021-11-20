module Test.Main where

import Prelude

import Data.Float32 (Float32)
import Data.Float32.Gen (chooseFloat32)
import Effect (Effect)
import Test.QuickCheck (class Arbitrary)
import Test.QuickCheck.Laws.Data (checkBounded, checkCommutativeRing, checkEq, checkOrd, checkRing, checkSemiring)
import Type.Proxy (Proxy(..))

newtype Float32' = Float32' Float32

derive newtype instance eqFloat32' :: Eq Float32'
derive newtype instance ordFloat32' :: Ord Float32'
derive newtype instance boundedFloat32' :: Bounded Float32'
derive newtype instance semiringFloat32' :: Semiring Float32'
derive newtype instance ringFloat32' :: Ring Float32'
derive newtype instance commutativeRingFloat32' :: CommutativeRing Float32'
derive newtype instance divisionRingFloat32' :: DivisionRing Float32'
derive newtype instance euclideanRingFloat32' :: EuclideanRing Float32'
instance arbitraryFloat32' :: Arbitrary Float32' where
  arbitrary = Float32' <$> chooseFloat32 bottom top

main :: Effect Unit
main = do
  let
    p :: Proxy Float32'
    p = Proxy
  checkBounded p
  checkEq p
  checkOrd p
  checkSemiring p
  checkRing p
  checkCommutativeRing p
-- checkDivisionRing p -- isn't a division ring because 32bit float isn't perfectly precise
-- checkEuclideanRing p -- likewise for euclidean ring

