module Lib
    ( defaultFunc, returnTypedParam, returnPeriklesQuote, readInputs, readEdge
    ) where

import Control.Monad (replicateM)
import System.IO (Handle, hGetLine)
import Data.Graph.Inductive.Graph (mkGraph)
import Data.Graph.Inductive.PatriciaTree (Gr)

defaultFunc = putStrLn "Story horsebox"

returnTypedParam x = x

returnPeriklesQuote = "Judging happiness to be the fruit of freedom and freedom that of valour, we shall never shy from the dangers of war."

data EdgeSpec = EdgeSpec
  { fromNode :: Int
  , toNode :: Int
  , distance :: Int
  }

readInputs :: Handle -> IO (Int, [EdgeSpec])
readInputs handle = do
  numNodes <- read <$> hGetLine handle
  numEdges <- (read <$> hGetLine handle)
  edges <- replicateM numEdges (readEdge handle)
  return (numNodes, edges)


readEdge :: Handle -> IO EdgeSpec
readEdge handle = do
  input <- hGetLine handle
  let [f_s, t_s, d_s] = words input
  return $ EdgeSpec (read f_s) (read t_s) (read d_s)
