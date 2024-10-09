-- FunctionsProducingLists.hs
--
-- CECS 342
-- Haskell vs C
--
-- Functions producing lists

module FunctionsProducingLists where

import Data.Char (toUpper)
import Prelude hiding (filter, flip, foldl, map, reverse)

-- Apply a function to each element in a list
map :: (t -> a) -> [t] -> [a]
map f [] = []
map f (x : xs) = f x : map f xs

-- Filter out all elements that have property p
filter :: (a -> Bool) -> [a] -> [a]
filter p [] = []
filter p (x : xs) =
  if p x
    then x : filter p xs
    else filter p xs

-- Tail recursive fold with an accumulating parameter
foldl :: (t1 -> t2 -> t1) -> t1 -> [t2] -> t1
foldl f z [] = z
foldl f z (x : xs) = foldl f (f z x) xs

-- Intuitively foldl combines the elements from the left:
--  foldl (+) 0 [1, 2, 3] == ((0 + 1) + 2) + 3

-- Flip the arguments of any 2-argument-function
flip :: (t1 -> t2 -> t3) -> t2 -> t1 -> t3
flip f a b = f b a

-- Reverse a list
reverse :: [a] -> [a]
reverse = foldl (flip (:)) []