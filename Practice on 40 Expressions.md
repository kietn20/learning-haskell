# 50 Haskell Expressions and Types Practice Questions

1. What is the result of `x01 = 1+2`?

A) 1
B) 2
C) 3
D) 4

Solution: <details><summary>Click to reveal</summary>C) 3 - This is a simple arithmetic addition.</details>

2. What is the type of `t02 = (+)`?

A) `Int -> Int -> Int`
B) `Num a => a -> a -> a`
C) `(+) :: Num a => a -> a -> a`
D) `Integer -> Integer -> Integer`

Solution: <details><summary>Click to reveal</summary>B) Num a => a -> a -> a - The (+) operator is polymorphic and works for any numeric type.</details>

3. What is the result of `x04 = flip (-) 1 2`?

A) -1
B) 1
C) -3
D) 3

Solution: <details><summary>Click to reveal</summary>B) 1 - `flip (-)` reverses the order of arguments, so it becomes 2 - 1 = 1.</details>

4. What is the type of `t05 = 'a'`?

A) `String`
B) `[Char]`
C) `Char`
D) `Character`

Solution: <details><summary>Click to reveal</summary>C) Char - A single character in Haskell has the type Char.</details>

5. What is the result of `x05 = 1 : []`?

A) `1`
B) `[]`
C) `[1]`
D) `[[1]]`

Solution: <details><summary>Click to reveal</summary>C) [1] - The (:) operator prepends 1 to an empty list, creating a single-element list.</details>

6. What is the type of `t09 = (:)`?

A) `a -> [a] -> [a]`
B) `[a] -> a -> [a]`
C) `Num a => a -> [a] -> [a]`
D) `(a, [a]) -> [a]`

Solution: <details><summary>Click to reveal</summary>A) a -> [a] -> [a] - The (:) operator takes an element and a list, and returns a new list.</details>

7. What is the result of `x09 = if 1<2 then "yes" else "no"`?

A) `True`
B) `False`
C) `"yes"`
D) `"no"`

Solution: <details><summary>Click to reveal</summary>C) "yes" - The condition 1<2 is true, so the "then" branch is executed.</details>

8. What is the type of `t11 = ('a', 2)`?

A) `(Char, Int)`
B) `(Char, Integer)`
C) `(Char, Num a => a)`
D) `Tuple Char Int`

Solution: <details><summary>Click to reveal</summary>C) (Char, Num a => a) - The second element is polymorphic for any numeric type.</details>

9. What is the result of `x13 = foldr (+) 0 [1, 2, 3]`?

A) 0
B) 1
C) 6
D) 10

Solution: <details><summary>Click to reveal</summary>C) 6 - This folds the list from right to left: (1 + (2 + (3 + 0))) = 6.</details>

10. What is the type of `t14 = flip`?

A) `(a -> b -> c) -> (b -> a -> c)`
B) `(a -> b -> c) -> a -> b -> c`
C) `(a -> b) -> b -> a`
D) `(a -> b -> c) -> c -> b -> a`

Solution: <details><summary>Click to reveal</summary>A) (a -> b -> c) -> (b -> a -> c) - flip takes a function and returns a new function with the first two arguments swapped.</details>

11. What is the result of `x16 = foldl (-) 0 [1, 2, 3]`?

A) 6
B) -6
C) 2
D) -2

Solution: <details><summary>Click to reveal</summary>B) -6 - This folds the list from left to right: (((0 - 1) - 2) - 3) = -6.</details>

12. What is the type of `t16 = head`?

A) `[a] -> a`
B) `List a -> a`
C) `[a] -> Maybe a`
D) `Foldable t => t a -> a`

Solution: <details><summary>Click to reveal</summary>A) [a] -> a - head takes a list and returns its first element.</details>

13. What is the result of `x18 = map (2*) [1..10]`?

A) `[2,4,6,8,10]`
B) `[2,4,6,8,10,12,14,16,18,20]`
C) `[1,2,3,4,5,6,7,8,9,10]`
D) `[1,4,9,16,25,36,49,64,81,100]`

Solution: <details><summary>Click to reveal</summary>B) [2,4,6,8,10,12,14,16,18,20] - This applies the function (2*) to each element of the list [1..10].</details>

14. What is the type of `t19 = map`?

A) `(a -> b) -> [a] -> [b]`
B) `Functor f => (a -> b) -> f a -> f b`
C) `[a -> b] -> [a] -> [b]`
D) `(a -> b) -> (a -> b)`

Solution: <details><summary>Click to reveal</summary>A) (a -> b) -> [a] -> [b] - map takes a function and a list, and applies the function to each element of the list.</details>

15. What is the result of `x22 = take 2 $ map (2*) [3, 4, 5]`?

A) `[3,4]`
B) `[6,8]`
C) `[6,8,10]`
D) `[3,4,5]`

Solution: <details><summary>Click to reveal</summary>B) [6,8] - This applies (2*) to each element and then takes the first two results.</details>

16. What is the type of `t22 = foldr (+) 0`?

A) `[Int] -> Int`
B) `Num a => [a] -> a`
C) `(Num a, Foldable t) => t a -> a`
D) `[Integer] -> Integer`

Solution: <details><summary>Click to reveal</summary>C) (Num a, Foldable t) => t a -> a - This is a partially applied foldr that can work on any Foldable structure containing Num elements.</details>

17. What is the result of `x24 = foldr (++) [] [[1], [], [5, 7]]`?

A) `[1,5,7]`
B) `[[1],[],[5,7]]`
C) `[]`
D) `[1,[],5,7]`

Solution: <details><summary>Click to reveal</summary>A) [1,5,7] - This concatenates all the sublists into a single list.</details>

18. What is the type of `t26 = filter`?

A) `(a -> Bool) -> [a] -> [a]`
B) `Foldable t => (a -> Bool) -> t a -> [a]`
C) `[a] -> (a -> Bool) -> [a]`
D) `(a -> b) -> [a] -> [b]`

Solution: <details><summary>Click to reveal</summary>A) (a -> Bool) -> [a] -> [a] - filter takes a predicate function and a list, and returns a list of elements that satisfy the predicate.</details>

19. What is the result of `x29 = flip (foldr (:)) "abc" "def"`?

A) `"abcdef"`
B) `"defabc"`
C) `"fedcba"`
D) `"cbafed"`

Solution: <details><summary>Click to reveal</summary>B) "defabc" - This prepends "def" to "abc" in reverse order.</details>

20. What is the type of `t30 = ($)`?

A) `(a -> b) -> a -> b`
B) `(a -> b) -> (b -> c) -> (a -> c)`
C) `a -> (a -> b) -> b`
D) `(a -> b) -> [a] -> [b]`

Solution: <details><summary>Click to reveal</summary>A) (a -> b) -> a -> b - ($) is the function application operator with low precedence.</details>

21. What is the result of `x32 = fst (1, "abc")`?

A) `1`
B) `"abc"`
C) `(1, "a")`
D) `1 "abc"`

Solution: <details><summary>Click to reveal</summary>A) 1 - fst returns the first element of a pair.</details>

22. What is the type of `t33 = \f x -> f (f x)`?

A) `(a -> a) -> a -> a`
B) `(a -> b) -> a -> b`
C) `(a -> a) -> (a -> a)`
D) `(a -> b) -> (b -> c) -> a -> c`

Solution: <details><summary>Click to reveal</summary>A) (a -> a) -> a -> a - This function applies f twice to x, so f must take and return the same type.</details>

23. What is the result of `x35 = uncurry (+) (1, 2)`?

A) `(1, 2)`
B) `3`
C) `(+) 1 2`
D) `\x -> x + 3`

Solution: <details><summary>Click to reveal</summary>B) 3 - uncurry applies a curried function to a pair of arguments.</details>

24. What is the type of `t35 = curry`?

A) `((a, b) -> c) -> a -> b -> c`
B) `(a -> b -> c) -> (a, b) -> c`
C) `((a, b) -> c) -> (a -> b -> c)`
D) `(a -> b) -> a -> b`

Solution: <details><summary>Click to reveal</summary>A) ((a, b) -> c) -> a -> b -> c - curry transforms a function on pairs into a curried function.</details>

25. What is the result of `x37 = (\y-> y * y) 5`?

A) `5`
B) `10`
C) `25`
D) `\y -> y * y`

Solution: <details><summary>Click to reveal</summary>C) 25 - This applies the lambda function that squares its argument to 5.</details>

26. What is the type of `t37 = foldl (flip(:)) []`?

A) `[a] -> [a]`
B) `Foldable t => t a -> [a]`
C) `[a] -> a`
D) `a -> [a] -> [a]`

Solution: <details><summary>Click to reveal</summary>B) Foldable t => t a -> [a] - This function reverses any Foldable structure into a list.</details>

27. What is the result of `x39 = (\x -> (\x -> x+1) x) 5`?

A) `5`
B) `6`
C) `11`
D) `\x -> x+1`

Solution: <details><summary>Click to reveal</summary>B) 6 - The outer lambda applies the inner lambda (which adds 1) to 5.</details>

28. What is the type of `t39 = [2*x | x<-[1..10]]`?

A) `[Int]`
B) `Num a => [a]`
C) `[Integer]`
D) `Enum a => [a]`

Solution: <details><summary>Click to reveal</summary>B) Num a => [a] - This list comprehension produces a list of numbers, but the exact numeric type is polymorphic.</details>

29. What is the result of `x40 = (\f -> f (f 0)) (\x -> x+1)`?

A) `0`
B) `1`
C) `2`
D) `3`

Solution: <details><summary>Click to reveal</summary>C) 2 - This applies the increment function twice to 0.</details>

30. What is the type of `t40 = map (2*) [1..10]`?

A) `[Int]`
B) `Num a => [a]`
C) `[Integer]`
D) `Enum a => [a]`

Solution: <details><summary>Click to reveal</summary>B) Num a => [a] - Similar to question 28, this produces a list of numbers with a polymorphic numeric type.</details>

31. What is the result of `x11 = [1, 2] ++ [3, 4]`?

A) `[1,2,3,4]`
B) `[[1,2],[3,4]]`
C) `[1,2,7]`
D) `[3,4,1,2]`

Solution: <details><summary>Click to reveal</summary>A) [1,2,3,4] - The (++) operator concatenates two lists.</details>

32. What is the type of `t18 = (++)`?

A) `[a] -> [a] -> [a]`
B) `Num a => [a] -> [a] -> [a]`
C) `String -> String -> String`
D) `a -> [a] -> [a]`

Solution: <details><summary>Click to reveal</summary>A) [a] -> [a] -> [a] - The (++) operator concatenates two lists of the same type.</details>

33. What is the result of `x20 = take 3 [6, 5, 4, 3, 2, 1]`?

A) `[6,5,4]`
B) `[3,2,1]`
C) `[1,2,3]`
D) `[4,3,2]`

Solution: <details><summary>Click to reveal</summary>A) [6,5,4] - take 3 returns the first three elements of the list.</details>

34. What is the type of `t27 = max`?

A) `Ord a => a -> a -> a`
B) `Num a => a -> a -> a`
C) `Int -> Int -> Int`
D) `(Ord a, Num a) => a -> a -> a`

Solution: <details><summary>Click to reveal</summary>A) Ord a => a -> a -> a - max works on any type that can be ordered.</details>

35. What is the result of `x30 = foldl (flip(:)) [] [2, 4, 6]`?

A) `[2,4,6]`
B) `[6,4,2]`
C) `[]`
D) `[6,2,4]`

Solution: <details><summary>Click to reveal</summary>B) [6,4,2] - This effectively reverses the list by folding from the left with a flipped cons operation.</details>

36. What is the type of `t31 = \f x -> x`?

A) `a -> b ->