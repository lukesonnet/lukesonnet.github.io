---
layout: page
title: Teaching/Resources
---

I have helped teach an undergraduate data analysis class focused on the causes and consequences of political corruption and a graduate course on causal inference. Below are some relevant materials I have collected and presented that may be of use to others. I also include some tutorials I have developed for presentation to graduate students in the UCLA Political Science department.

### Causal inference

* [An introduction to (robust) standard errors (pdf)](/teaching/inference/200d_standard_errors.pdf) [(Rmd)](/teaching/inference/200d_standard_errors.Rmd)
* [An introduction to using R (data frames, simple models, simulations, sampling, and functions) (pdf)](/teaching/inference/200d_r_manual.pdf) [(Rmd)](/teaching/inference/200d_r_manual.Rmd)
* [Visualizing selection on observables (pdf)](/teaching/inference/200d_soo.pdf) [(Rmd)](/teaching/inference/200d_soo.Rmd)

### Machine Learning Estimation of Heterogeneous Treatment Effects

A short tutorial on how to implement in R a simple version of a data-driven approach to uncovering heterogeneous treatment effects proposed by [Athey and Imbens (2015)](https://faculty-gsb.stanford.edu/athey/documents/HeterogeneousEffects.pdf). [The tutorial can be found here](https://www.dropbox.com/s/l2k9jp5dfd1uen8/Sonnet_AtheyImbensHeterogeneousEffects.pdf?dl=0).

An official package has now been released by Susan Athey and friends and can be found [here.](https://github.com/susanathey/causalTree)

### Summarizing TIFF Data by Polygons in Shapefiles

A brief introduction to how to trim and spatially summarize data in tiff format by polygon shapefiles. Useful for averaging night time luminosity data by political district, for example.

* [Main tutorial [HTML]](https://www.dropbox.com/s/e9kh6hbi72ry0ka/using_rgdal_maptools.html?dl=0) [[Rmd]](https://www.dropbox.com/s/fbqrbnl1e22l3wm/using_rgdal_maptools.Rmd?dl=0) [[zip with all supporting files for replication]](https://www.dropbox.com/s/b6imt8ds45g88ci/using_rgdal_maptools.zip?dl=0)

### Downloading Facebook and Twitter Data using Python

Put together for a workshop on January 29, 2016, this tutorial and accompanying example scripts provide a guide to downloading Facebook and Twitter data using their APIs. Done entirely in Python, this tutorial takes advantage of several Python modules to ease data collection and storage.

* [Main tutorial in HTML](https://www.dropbox.com/s/p66hneka7bu50ru/Sonnet_API_FacebookTwitter.html?dl=0) [[IPython Notebook]](https://www.dropbox.com/s/quoev77zd3mclzx/Sonnet_API_FacebookTwitter.ipynb?dl=0)
* [scrape_facebook.py](https://www.dropbox.com/s/gifdpf0x7hqxpho/scrape_facebook.py?dl=0)
* [scrape_twitter.py](https://www.dropbox.com/s/5m18rb9ki5tyt4f/scrape_twitter.py?dl=0)

### Undergraduate Data Analysis

#### Resources

I prefer working in R ([Download R](http://cran.rstudio.com/)). It is easy to use RStudio to edit your R code and produce R Markdown files ([Download RStudio](http://www.rstudio.com/products/rstudio/download/)). Hopefully you have used these before in PS 6 or a similar course. If not, there are many resources available on the web, and I will link some of them here shortly.

R Markdown is a great tool to interleave code and writings. I have set up a quick manual and an example of its use to get you started:

* [R Markdown Manual](https://www.dropbox.com/s/9d2nsp0b8m879h6/usingRMarkdown.html?dl=0)
* [Example HTML](https://www.dropbox.com/s/2k2qewt3h32zyt6/enp_example.html?dl=0) [[.Rmd code that produce it](https://www.dropbox.com/s/9vils43zi92l6bx/enp_example.Rmd?dl=0)]

However, I also will be teaching with Stata in some situations. To that end, I have also created the following resource:

* [Stata tutorial](https://www.dropbox.com/s/wu6eb5eklw30m6s/sonnet_stata_tutorial.html?dl=0)

#### Data Visualization

* [Should the y-axis always go to zero?](http://byjustinfox.com/2014/12/14/the-rise-of-the-y-axis-zero-fundamentalists/) - Justin Fox
* Don't use pie charts: see [here](http://www.gilliganondata.com/index.php/2009/12/02/how-succinctly-can-i-explain-why-pie-charts-are-evil/) and [here](http://www.perceptualedge.com/articles/08-21-07.pdf). For a counter-argument that there are may be a *few* times when a pie chart is okay, see [here](http://speakingppt.com/2013/03/18/why-tufte-is-flat-out-wrong-about-pie-charts/).

### LUMS R Course

#### Class .Rmd Files

* [0: Getting Started](https://www.dropbox.com/s/ptnpckxbg77d7bp/0_getting_started.Rmd?dl=0)
* [1: Basic R](https://www.dropbox.com/s/ilicjtak649btwv/1_basic_R.Rmd?dl=0)
* [2: Manipulating data in R](https://www.dropbox.com/s/cxhb9cgplrb9rbf/2_manipulating_data.Rmd?dl=0)

#### Class .R files

* [2: Manipulating data in R lecture file](https://www.dropbox.com/s/tv0hgqvxdxv93g2/2_manipulating_data.R?dl=0)
* [3: Visualizing data in R lecture file](https://www.dropbox.com/s/vbcckvq8lbeh9sy/3_visualizing_data.R?dl=0)
#### Datasets

Quality of Government
* [Data in .csv file](https://raw.githubusercontent.com/lukesonnet/r_introduction/master/data/qog/qog_ts.csv) (right-click and save-as)
* [.pdf documentation (40MB)](https://www.dropbox.com/s/va4tydtimd1wakd/qog_bas_jan18.pdf?dl=0)
* [accompanying .R exercise file](https://www.dropbox.com/s/b9ghixbqel6m1tj/2_qog_data.R?dl=0)

Pakistan 2018 candidate level election data
* [Data in .csv file](https://raw.githubusercontent.com/colincookman/pakistan_election_results_2018/master/pk_candidate_data_2018.csv) (right-click and save-as)
* [accompanying .R exercise file](https://www.dropbox.com/s/xw0tl79cm9861jr/2_pk_election.R?dl=0)


CricInfo batting data
* [Data in .csv file](https://www.dropbox.com/s/0yptp6u9ao8xixd/Ball-to-Ball.csv?dl=0) (open and download in browser)
* [accompanying .R exercise file](https://www.dropbox.com/s/kck4gfaojpgjsb4/2_cric_data.R?dl=0)

PK Supreme Court Survey
* [Data in .dta file](https://www.dropbox.com/s/vjhf4j0rj47mjvl/Public%20Opinion%20Survey_Stata%20Data%20Set.dta?dl=0)
* [.docx documentation](https://www.dropbox.com/s/ntmbz4qqhj8ghxo/Supreme%2BCourt%2BSurvey%2BQuestions_AQ1.2%2B_150217_.docx?dl=0)
* [accompanying .R exercise file](https://www.dropbox.com/s/sx9hbdcbj3fu32u/2_supreme_court.R?dl=0)