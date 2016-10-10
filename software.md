---
layout: page
title: Software
---

## [VoteView](https://voteview.polisci.ucla.edu)

[WARNING: this project is under development. Some parts may function unexpectedly.] I am working with Jeff Lewis, Adam Boche, and Aaron Rudkin to rebuild the entire voteview database, server, and API that provide the roll calls used often in DW-NOMINATE ideal point estimation. Our work includes creating a [modern website](https://voteview.polisci.ucla.edu), accessible to all including researchers, students, and interested citizens as well as creating an [R package](https://github.com/JeffreyBLewis/Rvoteview) to provide methods to search and download roll calls from the voteview database.

## [KRLS variants](https://github.com/lukesonnet/KRLS.jl)

Kernel Regularized Least Squares ([paper here](http://www.stanford.edu/~jhain/Paper/PA2014a.pdf)) is a flexible machine learning technique for fitting complex non-linear models to reduce misspecification bias. I have worked independently and with Chad Hazlett on performances to this software in R and implementations in other languages.
* [Extending KRLS in R to include binary outcome models, weighting, (cluster) robust standard errors and with speed improvements](https://github.com/lukesonnet/KRLS) - in progress
* [KRLS in Julia](https://github.com/lukesonnet/KRLS.jl) - this speeds up fitting and interpretation 10-20 times.
* KRLS in Cpp - forthcoming

## R Scripts

### [Cluster Robust Standard Errors](https://lukesonnet.github.io/teaching/clusterRSE.R)

This is yet another function to compute cluster robust standard errors in R. Adapted from the script written by Mahmood Arai, I make it a bit more flexible and match the method to that used by Stata's cluster command. There is no separate documentation, but comments in the code itself hopefully make its inputs and outputs clear.
