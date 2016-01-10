# Leetcode
Personal repository implement with Ruby

## 27. Remove Element
这题用ruby简直是开挂。一个Array#delete方法即解决问题

Runtime: 84 ms, beats 33.33%

更新：结果效率就炸了，只有33.33%，后来查了下文档和源码，发现原因是因为delete的实现是一个遍历中做判断，如果等于obj则continue，如果不是则更改将原来的数字移到新的index上，这样意味这每一次循环中都去操作了数组，所以效率就慢。后来用了Array#reject!就快了很多。这个函数是最后再更改数组。

新的成绩是：Runtime: 68 ms, beats 79.13%

## 226. Invert Binary Tree
翻转二叉树，关键点在于递归的运用，递归到最后翻转左右子树即可

## 228. Summary Ranges
一开始还搞不懂什么叫summary ranges，其实就是连续区间，找出连续区间，用规定的字符串显示，如果该区间只有1个element，即显示自己
