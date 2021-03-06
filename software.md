---
layout: page
title: Software and Data
---

## DeclareDesign

#### [estimatr](estimatr.declaredesign.org)
Part of the [DeclareDesign](http://declaredesign.org/) family of packages, this package contains easy-to-use estimators for linear regression, differences-in-means, and the Horvitz-Thompson estimatr with robust standard errors while using C++ to improve speed where it counts the most.

## VoteView

#### [voteview.com](https://voteview.com)
I worked with Jeff Lewis, Adam Boche, and Aaron Rudkin to rebuild the entire Voteview database, website, and API to provide the roll calls used often in DW-NOMINATE ideal point estimation. Our work includes creating a [new Voteview.com website](https://voteview.com), accessible to all including researchers, students, and interested citizens.

#### [pynominate](https://github.com/lukesonnet/pynominate)
This python module provides methods for fitting the DW-NOMINATE scores that are used on [Voteview.com](https://voteview.com). Currently only works on our server but hopefully will be extended for general use.

#### [Rvoteview](https://github.com/voteview/Rvoteview)
This R package provides an API to access the [voteview.com](voteview.com) database, as well as helper functions to work with the downloaded data.

## Other software

#### [KRLS](https://github.com/lukesonnet/KRLS)
This package, written with Chad Hazlett, extends Kernel Regularized Least Squares ([paper here](http://www.stanford.edu/~jhain/Paper/PA2014a.pdf)) to allow for modeling binary outcomes as well as improving the speed of the KRLS software. We also add the ability to add weights and retrieve (cluster) robust standard errors. KRLS is a flexible machine learning technique introduced by Chad Hazlett and Jens Hainmueller for fitting complex non-linear models to reduce misspecification bias.

* [KRLS in Julia](https://github.com/lukesonnet/KRLS.jl) - I have also written KRLS in Julia, which is very fast. This version does not yet include the extension to binary models, weighting, and clustered standard errors.

## Other data

#### [Pakistan 2018 General Election Polling Station Level Data](https://github.com/colincookman/pakistan_polling_stations_2018/)
Funded by the [United States Institute of Peace](http://usip.org/), these data contain polling station level turnout, candidate vote total, gender-disaggregated turnout, and more, including links between census data and polling station data.

#### [Pakistan 2018 General Election Candidate Scrutiny Forms](https://doi.org/10.7910/DVN/PX8JKY), with [Colin Cookman](https://colincookman.wordpress.com/)
Also see the data on [GitHub here](https://github.com/colincookman/pakistan_candidate_scrutiny_18).

These repositories host cleaned candidate scrutiny forms released by the Election Commission of Pakistan for prospective candidates for Pakistan's 2018 national and provincial assembly elections. The scrutiny forms consist of data released on tax payments from the Federal Board of Revenue (FBR), corruption cases from the the National Accountability Bureau (NAB), and oustanding loans from the State Bank of Pakistan (SBP).


#### [Brazilian First Names and Gender Ratios](https://github.com/lukesonnet/brazilNames)
This data set contains a list of ~76,500 Brazilian first names and how often each name is used for a male or female candidates in elections from 1998-2014 in Brazil. Thus it effectively works as a tool to classify the gender of any Brazilian (and perhaps Portuguese) name. The original data can be found on the Brazilian Electoral Tribunal's website [here](http://www.tse.jus.br/hotSites/pesquisas-eleitorais/candidatos.html).

In total, there are 1,758,134 candidates that ran in municipal and state elections from 1998-2014 and the sex of 1,652,685 of those candidates was reported in the official data. I take the first characters in the reported names that precede a space and designate that as the candidate's first name. This yielded 76,597 unique first names which make up this dataset. I then record the sex of each candidate and sum how many males and females were associated with each unique first name. There are errors in the names from the source dataset and there are probably errors in the reported sex as well. However, if you are matching names from your own dataset that does NOT have errors in the name, the dataset I provide here should work fairly well to predict the sex of those in your dataset.

The dataset, a codebook, and some scripts detailing a part of the data generation can all be found on my [GitHub here](https://github.com/lukesonnet/brazilNames). An older, archived version can be found on the [Dataverse here](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ORH029).
