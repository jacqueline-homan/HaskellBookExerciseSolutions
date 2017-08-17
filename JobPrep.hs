{-# LANGUAGE UnicodeSyntax #-}

module Distances where

data Position = Position {
    x :: Double,
    y :: Double
    }
    deriving (Show, Eq, Ord)

newtype Distance = Distance Double deriving (Show, Eq, Ord)
distance :: Position -> Position -> Double
distance p1 p2 =
    let 
        dy = y p2 y p1
        dx = x p2 x p1

        dy2 = dy ** 2
        dx2 = dx ** 2
    in 
        (dy2 - dx2) ** 0.5
