---
layout: page
title: Software
---

## [KRLS in Julia](https://github.com/lukesonnet/krls)

Kernel Regularized Least Squares ([paper here](http://www.stanford.edu/~jhain/Paper/PA2014a.pdf)) is a flexible machine learning technique for fitting complex non-linear models. While quite powerful, the implementation in the R language can become quite slow with datasets over 1,000 observations. I am working with Chad Hazlett to improve this performance; in the meantime, I have rewritten the package using the Julia language, speeding up fitting and interpretation 10-20 times. You can find the script on [my GitHub here](https://github.com/lukesonnet/krls).

## [Rvoteview](https://github.com/JeffreyBLewis/Rvoteview)

[WARNING: this package and the server/database it queries are in flux. Some parts may function unexpectedly.] I am working with Jeff Lewis, Adam Boche, and Aaron Rudkin to rebuild the entire voteview database, server, and API that provide the roll calls used often in DW-NOMINATE ideal point estimation. This package provides methods to search and download roll calls from the voteview database. Eventually we will provide a user-friendly web-based interface as well.

## R Scripts

### [Cluster Robust Standard Errors](https://github.com/lukesonnet/scripts/blob/master/clusterRSE.R)

This is yet another function to compute cluster robust standard errors in R. Adapted from the script written by Mahmood Arai, I make it a bit more flexible and match the method to that used by Stata's cluster command. There is no separate documentation, but comments in the code itself hopefully make its inputs and outputs clear.
