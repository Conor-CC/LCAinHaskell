module DirectedGraph where

data Graph a = EmptyGraph | Graph [(a,[a])] deriving (Show, Read, Eq) -- Graph is a list of origins paired with edgeends

createGraph ::(Eq a, Num a) => [(a,[a])] -> Graph a
createGraph [] = EmptyGraph
createGraph a = Graph a

empty :: Graph a
empty = Graph []

insertVertex :: Eq a => a -> Graph a -> Graph a
insertVertex = undefined

insertEdge :: Eq a => (a,a) -> Graph a -> Graph a
insertEdge = undefined -- insert edge in list of origin
--do not forget to add origin, end if they don't exist
