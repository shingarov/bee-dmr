
We use github issue tracker to 

This document explains the rules that need to be applied in order to get code accepted
for integration.

## General philosophy

As developers, we spend most of our time understanding existing code by reading it. For
that reason, in this project we aim to minimize the amount of text to be read. Shorter
code means less reading effort and more things fitting in the text editors, maximizing
screen space efficiency. 

The following general rules apply:
 
- Short and concise names are expected for both variables, selectors and class names.
- We prefer words that are part of the existing vocabulary in the code corpus.
- All code is autoformatted, unless there is a _very_ special and specific reason.
- Simple optimizations should be left to be done dynamically by the runtime system, 
  instead of being written by the developer short and concise
- We favor simplicity and minimality to performance.
- Bee has been written using the rules explained here, giving it homogeneity 
  through all the code base. New code is expected to strictly follow them too. 



## Methods

- Temporary variable names consist of just _one_ word. The name has to be related
  primarily to the usage, secondarily to the contents and finally to the type.
  As an example, `done := Set new` would be preferred to `tasks := Set new` which
  would be preferred to `set := Set new` for a set that stores tasks that have been
  done.
- Method arguments are named after the type expected, prefixed by an article. In
  cases where it is not possible/desirable then temporary naming rules apply.
- Method selectors are preferred short and succinct, one or two words if possible.
  As an example, `#elements` is preferred to `#elementsArray`, which is preferred
  to `#arrayOfElements`
 
- _Comments are not allowed_, except as headers in methods that define public APIs,
  or for _very_ special reasons (which almost never exist). If you are writing a
  comment in the middle of a method, then refactor the thing into another method
  or create according objects to make the code self understandable.
- Nested loops are highly discouraged. Again, factor them into methods and let
  the compiler optimize. Example:
  
  ```
  foo
  [aCollection isEmpty] whileTrue: [
      last := aCollection removeLast. aCollection do: [:other | last use: other]]
     
  ==>
  foo
  [aCollection isEmpty] whileTrue: [
      last := aCollection removeLast. self useOthers: aCollection with: last]
  
  useOthers: aCollection with: anObject
      aCollection do: [:other | anObject use: other]
  ```
  
- Using keyword messages as argument of other keyword arguments is not allowed.
  Example:
  
  ```
  self foo: (self bar: aBaz)
  ==>
  bar := self bar: aBaz.
  self foo: bar
  ```
