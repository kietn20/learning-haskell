-- FunctionsConsumingLists.hs
--
-- CECS 342
-- Haskell vs C
--
-- Functions consuming lists

module FunctionsConsumingLists where

import Prelude hiding (foldr, head, length, product, sum, tail)

-- List syntax in Haskell:
list1 :: [Integer]
list1 = [1, 2, 3] -- syntactic sugar

list2 :: [Integer]
list2 = 1 : 2 : 3 : []

list3 :: [Integer]
list3 = 1 : (2 : (3 : [])) -- list construction

-- Strings are just lists of charcters:
list4 :: String
list4 = "This is a list of characters."

-- Some simple functions on lists
--   using pattern matching to deconstruct lists:
head :: [a] -> a
head (x : xs) = x -- get the first element

tail :: [a] -> [a]
tail (x : xs) = xs -- drop the first element

-- Some recursive functions on lists:
sum :: Num a => [a] -> a
sum [] = 0
sum (x : xs) = x + sum xs

product :: Num a => [a] -> a
product [] = 1
product (x : xs) = x * product xs

length :: Num a1 => [a2] -> a1
length [] = 0
length (x : xs) = 1 + length xs

-- The above functions share the same recursion pattern:
foldr :: (t1 -> t2 -> t2) -> t2 -> [t1] -> t2
foldr f z [] = z
foldr f z (x : xs) = x `f` (foldr f z xs)

-- Intuitively foldr combines elements from the right:
--   foldr (+) 0 [1, 2, 3]
--     == foldr (+) 0 (1 : (2 : (3 : [])))
--     ==              1 + (2 + (3 +  0))

-- Thus we can define them in terms of foldr:
sum' :: [Integer] -> Integer
sum' = foldr (+) 0

product' :: [Integer] -> Integer
product' = foldr (*) 1

length' :: [t1] -> Integer
length' = foldr (\a b -> 1 + b) 0