---
layout: page
title: Data
---

## Brazilian First Names and Gender Ratios

This data set contains a list of ~76,500 Brazilian first names and how often each name is used for a male or female candidates in elections from 1998-2014 in Brazil. Thus it effectively works as a tool to classify the gender of any Brazilian (and perhaps Portuguese) name. The original data can be found on the Brazilian Electoral Tribunal's website [here](http://www.tse.jus.br/hotSites/pesquisas-eleitorais/candidatos.html).

In total, there are 1,758,134 candidates that ran in municipal and state elections from 1998-2014 and the sex of 1,652,685 of those candidates was reported in the official data. I take the first characters in the reported names that precede a space and designate that as the candidate's first name. This yielded 76,597 unique first names which make up this dataset. I then record the sex of each candidate and sum how many males and females were associated with each unique first name. There are errors in the names from the source dataset and there are probably errors in the reported sex as well. However, if you are matching names from your own dataset that does NOT have errors in the name, the dataset I provide here should work fairly well to predict the sex of those in your dataset.

The dataset, a codebook, and some scripts detailing a part of the data generation can all be found on my [GitHub here](https://github.com/lukesonnet/brazilNames). An older, archived version can be found on the [Dataverse here](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ORH029).

Please email me if you use this data or have any questions! Thanks.
