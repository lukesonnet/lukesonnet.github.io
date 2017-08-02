---
layout: page
title: Research
---

## Work in Progress

#### Improving political communication: a field experiment in Pakistan - With Miriam Golden (UCLA) and Saad Gulzar (Stanford)

Funded by the International Growth Center, Empirical Studies of Conflict, and the Abdul Latif Jameel Poverty Action Lab.

Elections are a blunt tool for accountability. Can enhanced politician-voter communication in the periods between elections improve democratic outcomes? We partner with 20 provincial assembly members in Pakistan and design an experiment with Interactive Voice Response (IVR) – a technology that enables politicians to robocall a large number of voters in their own voice to ask them questions and receive feedback. We randomize whether respondents receive a call soliciting preferences about upcoming decisions the politician must make. A follow-up call randomizes how responsive the politician is to voters’ preferences. We study the effect of this communication on voters’ evaluations of the incumbent, their views on government performance, and the prospects for electoral accountability. We also study how politicians allocate effort and make decisions in response to increased information from certain areas of their constituency.

#### Kernel Regularized Logistic Regression: avoiding misspecification bias while maintaining interpretability for binary outcome regressions - With Chad Hazlett (UCLA)

[Extension of KRLS package in R](https://github.com/lukesonnet/KRLS)

When faced with a binary outcome, investigators face two specification challenges: a "structural component" (e.g. XB) that makes use of covariate data, and a link function connecting the probability of observing a "1" to this structural component. Investigators typically have little or no theoretical guidance on either point. Though the choice of link function will often have little substantive impact, the choice of structural component can easily lead to severe misspecification bias. Machine learning methods can more flexibly model Pr(Y=1\|X), mitigating both the structural and link function specification concerns. However, social scientists often find machine learning tools inappropriate as they rarely enable estimate the usual quantities of interest, such as marginal effects and their standard errors. We describe Kernel Regularized Logistic Regression (KRLogit), a kernel logistic ridge regression approach that seeks to avoid costly misspecification errors through a flexible modeling approach that nevertheless allows for interpretation and inference similar to traditional generalized linear models. We automatically produce estimates that are as or more intuitive than standard interpretations for conventional logit or probit model coefficients. The method is an extension of Kernel Regularized Least Squares (Hainmueller & Hazlett 2014), but performance is improved both in theory and practice for binary outcomes. We provide the KRLogit method as an option in the existing KRLS package, also adding cluster- and hetreoskedasticity-robust standard error options, weights, and a new approximation technique that greatly improves speed for both binary and continuous outcomes.
