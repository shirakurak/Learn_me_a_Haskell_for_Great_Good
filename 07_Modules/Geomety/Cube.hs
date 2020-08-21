module Geomety.Cube
( volume
, are
) where

import qualified Geomety.Cuboid as Cuboid

volume :: Float -> Float
volume side = Cuboid.volume side side side

area :: Float -> Float
area side = Cuboid.area side side side