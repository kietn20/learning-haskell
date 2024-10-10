# Haskell 50-Question Practice Exam

1. In Haskell, what is the result of `let x = 123 in x * x`?

A) 246
B) 15129
C) 123
D) Error

Solution: <details><summary>Click to reveal</summary>B) 15129 - This expression defines x as 123 and then computes x * x, which is 123 * 123 = 15129.</details>

2. Which of the following is a valid way to define a function in Haskell?

A) `twice n = 2 * n`
B) `twice = \n -> 2 * n`
C) `twice = (2 *)`
D) All of the above

Solution: <details><summary>Click to reveal</summary>D) All of the above - These are all valid ways to define a function in Haskell, demonstrating different syntaxes including standard definition, lambda expression, and section.</details>

3. What is the type signature of the function `average1 a b = (a + b) / 2`?

A) `average1 :: Int -> Int -> Int`
B) `average1 :: Float -> Float -> Float`
C) `average1 :: (Fractional a) => a -> a -> a`
D) `average1 :: (Num a) => a -> a -> a`

Solution: <details><summary>Click to reveal</summary>B) average1 :: Float -> Float -> Float - The division operation (/) requires Fractional types, and Float is inferred as the default Fractional type.</details>

4. What does the `otherwise` keyword represent in Haskell guard expressions?

A) It's a syntax error
B) It's equivalent to `True`
C) It's equivalent to `False`
D) It's a special keyword that must be used in every guard expression

Solution: <details><summary>Click to reveal</summary>B) It's equivalent to True - `otherwise` is used as the catch-all case in guard expressions and is equivalent to the boolean value True.</details>

5. Which of the following is a correct implementation of the factorial function using pattern matching?

A) `factorial 0 = 1; factorial n = n * factorial (n - 1)`
B) `factorial n = if n == 0 then 1 else n * factorial (n - 1)`
C) `factorial n | n == 0 = 1 | otherwise = n * factorial (n - 1)`
D) All of the above

Solution: <details><summary>Click to reveal</summary>D) All of the above - These are all valid implementations of the factorial function in Haskell, using pattern matching, if-then-else, and guards respectively.</details>

6. What is the result of `fib2 5` given the following implementation?

```haskell
fib2 n = fib_acc n 0 1
  where
    fib_acc 0 a _ = a
    fib_acc n a b = fib_acc (n - 1) b (a + b)
```

A) 3
B) 5
C) 8
D) 13

Solution: <details><summary>Click to reveal</summary>B) 5 - This implementation uses accumulator parameters to efficiently calculate Fibonacci numbers. For n = 5, the result is 5.</details>

7. Which of the following is the correct way to define a list in Haskell?

A) `[1, 2, 3]`
B) `1 : 2 : 3 : []`
C) `1 : (2 : (3 : []))`
D) All of the above

Solution: <details><summary>Click to reveal</summary>D) All of the above - These are all valid and equivalent ways to define a list in Haskell.</details>

8. What is the type of the list `"Hello, World!"`?

A) `[Char]`
B) `String`
C) `[String]`
D) Both A and B

Solution: <details><summary>Click to reveal</summary>D) Both A and B - In Haskell, String is defined as a type alias for [Char], so both types are correct for a string literal.</details>

9. What does the `head` function do when applied to a list?

A) Returns the first element of the list
B) Returns the last element of the list
C) Returns all elements except the last one
D) Returns all elements except the first one

Solution: <details><summary>Click to reveal</summary>A) Returns the first element of the list - The `head` function extracts the first element of a non-empty list.</details>

10. What is the result of `foldr (+) 0 [1, 2, 3]`?

A) 0
B) 1
C) 6
D) 10

Solution: <details><summary>Click to reveal</summary>C) 6 - `foldr (+) 0 [1, 2, 3]` is equivalent to `1 + (2 + (3 + 0))`, which evaluates to 6.</details>

11. Which of the following correctly defines an algebraic data type for a binary tree?

A) `data Tree a = Leaf | Node a (Tree a) (Tree a)`
B) `data Tree a = Leaf a | Node (Tree a) (Tree a)`
C) `data Tree a = Leaf | Node (Tree a) a (Tree a)`
D) `data Tree = Leaf a | Node Tree a Tree`

Solution: <details><summary>Click to reveal</summary>C) data Tree a = Leaf | Node (Tree a) a (Tree a) - This correctly defines a binary tree where each node contains a value and two subtrees.</details>

12. What is the purpose of the `deriving` keyword in Haskell?

A) To create new types
B) To automatically implement certain type classes
C) To define recursive functions
D) To import modules

Solution: <details><summary>Click to reveal</summary>B) To automatically implement certain type classes - The `deriving` keyword allows Haskell to automatically generate implementations for certain type classes like Show, Eq, Ord, etc.</details>

13. Which of the following is a valid way to define a record type in Haskell?

A) `data Person = Person { name :: String, age :: Int }`
B) `type Person = { name :: String, age :: Int }`
C) `data Person = { name = String, age = Int }`
D) `record Person = { name :: String, age :: Int }`

Solution: <details><summary>Click to reveal</summary>A) data Person = Person { name :: String, age :: Int } - This is the correct syntax for defining a record type in Haskell.</details>

14. What is the result of `map (*2) [1, 2, 3]`?

A) `[1, 2, 3]`
B) `[2, 4, 6]`
C) `[1, 4, 9]`
D) `[2, 2, 2]`

Solution: <details><summary>Click to reveal</summary>B) [2, 4, 6] - The `map` function applies the given function (*2) to each element of the list, doubling each number.</details>

15. Which of the following is a key difference between Haskell and C?

A) Haskell is compiled, C is interpreted
B) Haskell is purely functional, C is imperative
C) Haskell uses static typing, C uses dynamic typing
D) Haskell supports object-oriented programming, C doesn't

Solution: <details><summary>Click to reveal</summary>B) Haskell is purely functional, C is imperative - This is a fundamental difference between the two languages in terms of programming paradigms.</details>

16. What does lazy evaluation mean in Haskell?

A) Functions are only defined when they are called
B) Variables are only initialized when they are first used
C) Expressions are only evaluated when their results are needed
D) The compiler optimizes code automatically

Solution: <details><summary>Click to reveal</summary>C) Expressions are only evaluated when their results are needed - This is the principle of lazy evaluation in Haskell.</details>

17. Which of the following is true about recursion in Haskell?

A) It's less efficient than loops
B) It's the primary way to implement repetition
C) It's not supported in Haskell
D) It requires mutable variables

Solution: <details><summary>Click to reveal</summary>B) It's the primary way to implement repetition - In Haskell, recursion is used instead of loops for repetitive operations.</details>

18. What is the purpose of the `$` operator in Haskell?

A) Function composition
B) List concatenation
C) Function application with low precedence
D) Arithmetic division

Solution: <details><summary>Click to reveal</summary>C) Function application with low precedence - The `$` operator is used for function application, allowing the omission of parentheses in certain expressions.</details>

19. Which of the following is a correct way to implement quicksort in Haskell?

A) `quicksort [] = []`
   `quicksort (x:xs) = quicksort [y | y <- xs, y < x] ++ [x] ++ quicksort [y | y <- xs, y >= x]`
B) `quicksort [] = []`
   `quicksort (x:xs) = quicksort (filter (< x) xs) ++ [x] ++ quicksort (filter (>= x) xs)`
C) Both A and B
D) Neither A nor B

Solution: <details><summary>Click to reveal</summary>C) Both A and B - These are both valid implementations of quicksort in Haskell, using list comprehensions and filter respectively.</details>

20. What is the type of the expression `(+) :: Num a => a -> a -> a`?

A) A function type
B) A type class constraint
C) A polymorphic type
D) All of the above

Solution: <details><summary>Click to reveal</summary>D) All of the above - This expression represents a function type with a type class constraint (Num a) and is polymorphic over all types a that are instances of Num.</details>

21. What does the `::` operator do in Haskell?

A) List cons operator
B) Type annotation
C) Pattern matching
D) Function composition

Solution: <details><summary>Click to reveal</summary>B) Type annotation - The `::` operator is used to explicitly specify the type of an expression in Haskell.</details>

22. Which of the following is true about Haskell's type system?

A) It uses dynamic typing
B) It uses static typing with type inference
C) It doesn't have a type system
D) It requires explicit type declarations for all variables

Solution: <details><summary>Click to reveal</summary>B) It uses static typing with type inference - Haskell has a strong, static type system but can often infer types without explicit declarations.</details>

23. What is the result of `filter even [1..10]`?

A) `[1,3,5,7,9]`
B) `[2,4,6,8,10]`
C) `[]`
D) `[1,2,3,4,5,6,7,8,9,10]`

Solution: <details><summary>Click to reveal</summary>B) [2,4,6,8,10] - The `filter` function keeps only the elements that satisfy the predicate (even in this case).</details>

24. What is a monad in Haskell?

A) A type of loop
B) A data structure
C) A type class for sequencing computations
D) A module system

Solution: <details><summary>Click to reveal</summary>C) A type class for sequencing computations - Monads in Haskell are a powerful abstraction for structuring computations with side effects.</details>

25. Which of the following is true about pure functions in Haskell?

A) They can modify global state
B) They always return the same output for the same input
C) They can perform I/O operations
D) They must take at least one argument

Solution: <details><summary>Click to reveal</summary>B) They always return the same output for the same input - This is a key property of pure functions in functional programming.</details>

26. What does the `foldl` function do?

A) Folds a list from the left
B) Folds a list from the right
C) Filters a list
D) Maps over a list

Solution: <details><summary>Click to reveal</summary>A) Folds a list from the left - `foldl` applies a function to a starting value and all elements of a list, from left to right.</details>

27. What is the purpose of the `Maybe` type in Haskell?

A) To represent optional values
B) To create mutable variables
C) To define new types
D) To perform I/O operations

Solution: <details><summary>Click to reveal</summary>A) To represent optional values - The `Maybe` type is used to represent computations that might fail or values that might not exist.</details>

28. Which of the following is a valid way to define a type synonym in Haskell?

A) `type String = [Char]`
B) `data String = [Char]`
C) `newtype String = [Char]`
D) `class String = [Char]`

Solution: <details><summary>Click to reveal</summary>A) type String = [Char] - This is the correct syntax for defining a type synonym in Haskell.</details>

29. What is the result of `[x | x <- [1..5], even x]`?

A) `[1,2,3,4,5]`
B) `[2,4]`
C) `[1,3,5]`
D) `[]`

Solution: <details><summary>Click to reveal</summary>B) [2,4] - This list comprehension generates a list of even numbers from 1 to 5.</details>

30. Which of the following is true about Haskell's evaluation strategy?

A) It uses strict evaluation by default
B) It uses lazy evaluation by default
C) It always evaluates all function arguments
D) It doesn't have a consistent evaluation strategy

Solution: <details><summary>Click to reveal</summary>B) It uses lazy evaluation by default - Haskell uses lazy evaluation, meaning expressions are only evaluated when their results are needed.</details>

31. What is the purpose of the `do` notation in Haskell?

A) To define new types
B) To create loops
C) To sequence monadic computations
D) To import modules

Solution: <details><summary>Click to reveal</summary>C) To sequence monadic computations - The `do` notation provides a convenient syntax for working with monads.</details>

32. Which of the following is a correct way to define a higher-order function in Haskell?

A) `applyTwice f x = f (f x)`
B) `applyTwice = \f -> \x -> f (f x)`
C) `applyTwice f = f . f`
D) All of the above

Solution: <details><summary>Click to reveal</summary>D) All of the above - These are all valid ways to define a higher-order function in Haskell that applies a function twice.</details>

33. What is the result of `zipWith (+) [1,2,3] [4,5,6]`?

A) `[1,2,3,4,5,6]`
B) `[5,7,9]`
C) `[4,10,18]`
D) `[(1,4),(2,5),(3,6)]`

Solution: <details><summary>Click to reveal</summary>B) [5,7,9] - `zipWith` applies the given function (+) to corresponding elements of the two lists.</details>

34. Which of the following is true about Haskell's type classes?

A) They are similar to interfaces in object-oriented languages
B) They allow ad-hoc polymorphism
C) They can have default implementations for methods
D) All of the above

Solution: <details><summary>Click to reveal</summary>D) All of the above - Type classes in Haskell share similarities with interfaces, enable ad-hoc polymorphism, and can provide default method implementations.</details>

35. What does the `newtype` keyword do in Haskell?

A) Creates a new data type with exactly one constructor and one field
B) Creates a type synonym
C) Defines a new type class
D) Imports a new module

Solution: <details><summary>Click to reveal</summary>A) Creates a new data type with exactly one constructor and one field - `newtype` is used to create a new type that is isomorphic to an existing type, but with different semantics.</details>

36. Which of the following is a correct implementation of the `reverse` function using `foldl`?

A) `reverse = foldl (:) []`
B) `reverse = foldl (flip (:)) []`
C) `reverse = foldr (:) []`
D) `reverse = foldr (flip (:)) []`

Solution: <details><summary>Click to reveal</summary>B) reverse = foldl (flip (:)) [] - This implementation correctly reverses a list using `foldl` and `flip (:)`.</details>

37. What is the purpose of the `Eq` type class in Haskell?

A) To define equality and inequality
B) To define ordering
C) To define numeric operations
D) To define string operations

Solution: <details><summary>Click to reveal</summary>A) To define equality and inequality - The `Eq` type class provides methods for testing equality (==) and inequality (/=).</details>

38. Which of the following is true about Haskell's pattern matching?

A) It can only be used with lists
B) It can be used with any algebraic data type
C) It requires explicit type annotations
D) It can only match exact values, not variables

Solution: <details><summary>Click to reveal</summary>B) It can be used with any algebraic data type - Pattern matching in Haskell is a powerful feature that works with all algebraic data types.</details>

39. What is the result of `take 3 [1..]`?

A) `[1,2,3]`
B) `[1,2,3,4,5,...]`
C) `[]`
D) It will cause an infinite loop

Solution: <details><summary>Click to reveal</summary>A) [1,2,3] - Due to lazy evaluation, `take 3` will only evaluate the first three elements of the infinite list [1..].</details>

40. What does the `>>` operator do in Haskell's do notation?

A) Bitwise right shift
B) Function composition
C) Sequencing of actions, discarding the result of the first
D) Parallel execution of actions

Solution: <details><summary>Click to reveal</summary>C) Sequencing of actions, discarding the result of the first - In do notation, `>>` is used to sequence actions when the result of the first action is not needed.</details>

41. Which of the following is a valid way to define a typeclass instance in Haskell?

A) `instance Eq Bool where (==) = eqBool`
B) `implement Eq Bool where (==) = eqBool`
C) `class Eq Bool where (==) = eqBool`
D) `derive Eq Bool where (==) = eqBool`

Solution: <details><summary>Click to reveal</summary>A) instance Eq Bool where (==) = eqBool - This is the correct syntax for defining a typeclass instance in Haskell.</details>

42. What is the purpose of the `($)` operator in Haskell?

A) Function application with low precedence
B) Function composition
C) Arithmetic division
D) List concatenation

Solution: <details><summary>Click to reveal</summary>A) Function application with low precedence - The `($)` operator is used for function application, allowing the omission of parentheses in certain expressions.</details>

43. Which of the following is true about Haskell's `let` expressions?

A) They can only be used at the top level of a module
B) They introduce local bindings
C) They are equivalent to `where` clauses in all contexts
D) They can only bind a single variable

Solution: <details><summary>Click to reveal</summary>B) They introduce local bindings - `let` expressions in Haskell are used to create local bindings within an expression.</details>

44. What is the result of `[1,2,3] ++ [4,5,6]`?

A) `[1,2,3,4,5,6]`
B) `[[1,2,3],[4,5,6]]`
C) `[1,2,3]`
D) `[4,5,6]`

Solution: <details><summary>Click to reveal</summary>A) [1,2,3,4,5,6] - The `++` operator concatenates two lists in Haskell.</details>

45. Which of the following is a key difference between `foldl` and `foldr`?

A) `foldl` works on lists, `foldr` works on trees
B) `foldl` is tail-recursive, `foldr` is not
C) `foldl` works from left to right, `foldr` from right to left
D) `foldl` requires an initial value, `foldr` does not

Solution: <details><summary>Click to reveal</summary>C) foldl works from left to right, foldr from right to left - This is the main conceptual difference between the two folding functions.</details>

46. What is the purpose of the `Functor` typeclass in Haskell?

A) To define functions that can be composed
B) To define types that can be mapped over
C) To define types that can be compared for equality
D) To define types that can be converted to strings

Solution: <details><summary>Click to reveal</summary>B) To define types that can be mapped over - The `Functor` typeclass is used for types that can have functions applied to values inside them.</details>

47. Which of the following is true about Haskell's `case` expressions?

A) They can only be used with numbers
B) They are syntactic sugar for function definitions
C) They allow pattern matching within an expression
D) They are used to define new data types

Solution: <details><summary>Click to reveal</summary>C) They allow pattern matching within an expression - `case` expressions in Haskell provide a way to do pattern matching anywhere an expression is allowed.</details>

48. What is the result of `map ($ 3) [(+1), (*2), (^2)]`?

A) `[4,6,9]`
B) `[1,2,9]`
C) `[3,3,3]`
D) Type error

Solution: <details><summary>Click to reveal</summary>A) [4,6,9] - This expression applies each function in the list to the value 3, resulting in [3+1, 3*2, 3^2].</details>

49. Which of the following is a correct way to define a binary tree data type in Haskell?

A) `data Tree a = Leaf | Branch a (Tree a) (Tree a)`
B) `data Tree a = Leaf a | Branch (Tree a) (Tree a)`
C) `data Tree a = Node a [Tree a]`
D) `data Tree a = Tree a | Leaf`

Solution: <details><summary>Click to reveal</summary>A) data Tree a = Leaf | Branch a (Tree a) (Tree a) - This correctly defines a binary tree where each branch has a value and two subtrees.</details>

50. What is the purpose of the `guard` function in list comprehensions?

A) To filter elements based on a boolean condition
B) To sort the resulting list
C) To limit the number of elements in the result
D) To group elements in the result

Solution: <details><summary>Click to reveal</summary>A) To filter elements based on a boolean condition - The `guard` function is used in list comprehensions to keep only the elements that satisfy a given condition.</details>