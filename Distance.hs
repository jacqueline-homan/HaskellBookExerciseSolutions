module Distance where

{- Pairwise Distances with different distance metrics. -}

-- * Euclidean Distance

-- | Represents a point on a 2-d Euclidean plane. There's no really
-- coherent physical comparing of 'Position's, so we don't derive
-- 'Ord'.
data Position = Position {
    -- | The absolute position along the X axis.
    x :: Double,

    -- | The absolute position along the Y axis.
    y :: Double
    }
    deriving (Show, Eq)

origin :: Position
origin = Position 0 0

-- | The Euclidean distance between two 'Position's.
data Distance = Distance Double deriving (Show, Eq, Ord)

-- | The class of all types that have a 2-Euclidean position.
class HasPosition p where
    position :: p -> Position

-- | Calculate the Euclidean distance between any two 'HasPosition'
-- values.
(%-) :: (HasPosition p, HasPosition q) => p -> q -> Distance
p %- q =
    let
        -- Extract the 'Position's
        p2 = position q
        p1 = position p

        -- | dy is the y difference
        dy = y p2 - y p1

        -- | dx is the x difference
        dx = x p2 - x p1

        -- | squares of the distances
        dy2 = dy ** 2
        dx2 = dx ** 2
    in
        -- | Euclidean distance is root of the sum of squares of distances
        Distance $ (dy2 + dx2) ** 0.5

infixl 6 %-

-- | Constructor of 'Position' from a tuple of coordinates.
positionT :: (Double, Double) -> Position
positionT (x, y) = Position x y

data User = User {uPos :: Position} deriving (Show, Eq)
instance HasPosition User where
    position = uPos

userT :: (Double, Double) -> User
userT = User . positionT

data Server = Server {sPos :: Position} deriving (Show, Eq)
instance HasPosition Server where
    position = sPos

serverT :: (Double, Double) -> Server
serverT = Server . positionT

-- | Our users
users :: [User]
users = userT <$> zip [10..70] [-40..12]

-- | Our servers
servers :: [Server]
servers = serverT <$> zip [5..75] [(-20)..(-4)]

-- | Distance from users to servers
distances = [ u %- s | u <- users, s <- servers ]