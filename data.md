---
layout: page
title: Data
---

## Brazilian First Names and Gender Ratios

This data set contains a list of ~74,000 Brazilian first names and how often each name is used for a male or female candidates in the 2000, 2004, 2008, and 2012 municipal elections in Brazil. Thus it effectively works as a tool to classify the gender of any Brazilian (and perhaps Portuguese) name. The original data can be found on the Brazilian Electoral Tribunal's website [here](http://www.tse.jus.br/hotSites/pesquisas-eleitorais/candidatos.html).

In total, there are 1,653,604 candidates that ran in municipal elections from 2000-2012 and the gender of 1,652,685 of those candidates was reported in the official data. I take the first characters in the reported names that precede a space and designate that as the candidate's first name. This yielded 74,650 unique first names which make up this dataset. I then record the gender of each candidate and sum how many men and women were associated with each unique first name. There are errors in the names from the source dataset and there are probably errors in the reported gender as well. However, if you are matching names from your own dataset that does NOT have errors in the name, the dataset I provide here should work fairly well to predict the gender of those in your dataset.

The dataset, a codebook, and some scripts detailing a part of the data generation can all be found on my [Dataverse ere](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ORH029).

Please email me if you use this data or have any questions! Thanks.
