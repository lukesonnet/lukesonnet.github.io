---
title: "Stata Tutorial"
author: "Luke Sonnet"
output: 
  html_document:
    theme: cerulean
    toc: yes
---

This is a Stata tutorial that outlines many of the basic commands and tools for data analysis in the Stata environment. The purpose of this document is to organize the commands we will use in a way that makes sense for our class. For a more comprehensive tutorial, see the work by [Germán Rodríguez at Princeton.](http://data.princeton.edu/stata/)

Each bolded command is also a link to the Official stata help page. Below each command is an example with some options to show usage. There is an example .do file that runs through all of these commands as an example that can be found [here.](http://lukesonnet.bol.ucla.edu/files/stata/sonnet_stata_tutorial.do)

At any time you can use `help [command]` to get the help files for a command. For example:
```
help cd
```

# Navigating to and loading data

## cd

This command changes the working directory. This means you can change your directory here and for the rest of the script use shortened path names.

Basic usage for Macintosh and Linux systems:
```
cd ~/Dropbox/classes/ps169_corruption/
```
Basic usage for Windows systems:
```
cd c:\Dropbox\classes\ps169_corruption\
```
Note that you will need quotation marks around the path if the file path has spaces in it.

## use

This command loads data in to Stata. It will look for the file name in your current directory.

Basic usage:
```
use hw1/hw1.dta
```
However, if data are already loaded in to Stata, you have to add an option to clear the workspace and load in the new data.
```
use hw1/hw1.dta, clear
```

## clear

You can also just manually clear the workspace at any time.

Basic usage:
```
clear
```

# Looking at the data

## browse

This command brings up the data browser so that you can see the data in spreadsheet format.

Basic usage:
```
browse
```
You can also browse without value labels to see the raw data if value labels are in the data
```
browse, nolabel
```

## describe

This command displays a summary of the data, including variable names, labels, and types and metadata about the dataset.

Basic usage:
```
describe
```

## list

This command lists the data requested in tabular format. This can be used to show a couple of variables at a time.

Basic usage:
```
list name cpi
```

## sort

`sort` allows you to sort the data in descending order by a particular variable. It will sort on multiple variables in the order specified. Basic usage:
```
sort cpi
sort cpi coc
```

## gsort

`gsort` allows for both ascending (`+`) and descending (`+`) sorting of the dataset.
```
gsort -cpi
gsort +cpi -coc
```

# Important code syntax options

## if

Now I am going to introduce an important option, the `if` option. The `if` option allows you to subset the data to only include the observations that satisfy the `if` command. This is placed after the command and any list of variables but before the comma and any options. For example, if we want to see the country names and CPI scores for only countries that score better than 0 on the Control of Corruption (`coc`) variable, we can use the following command:
```
list name cpi if coc > 0
``` 

## Logical statements

With the `if` option we can include lots of logical statements.

| Logical statement | In Stata 
| --- | --- |
| Equals | `==` |
| Does not equal | `!=` |      
| Greater than | `>` |
| Less than | `<` |
| Greater than or equal to | `>=`
| Less than or equal to | `<=`
| And | `&`
| Or | `|`

So for example, if we want to list all countries scoring greater than or equal to `3` on `cpi` AND all countries scoring less than `0` on `coc` we could write the following:
```
list name cpi coc if cpi >= 3 & coc < 0
```
If we wanted to list only those countries scoring greater than `3` on `cpi` OR greater than `1.5` on `coc` who also are NOT missing on `cpi`, we could write the following:
```
list name cpi coc if (cpi >= 3 | coc > 1.5) & cpi != .
```

## options

Options are often command-specific and change the behavior of the command. We have already used one when we used the `clear` option after `use`. Now we will use an option with the above `list` command to add a divider between columns and drop the observation numbers to the left of the table:
```
list name cpi if coc > 0, noobs divider
``` 

# Manipulating the data

## **gen**erate

This command is used to generate new variables. You can generate new variables from old variables or simply create a new variable to be manipulated according to some `if` statements. Some example usages:
```
gen cpi_inverted = 100 - cpi
gen cpi_plus_five = cpi + 5
```

## replace

`replace` is used to change the contents of a current variable. Often is used in conjunction with `generate`. For example, say we wanted to create a new variable that is a `1` if a country has high levels of corruption or `0` if it was a clean country. We could use `generate` and `replace` together as follows.
```
gen high_corruption = 1
replace high_corruption = 0 if cpi >= 50
replace high_corruption = . if cpi == .
```

# Summarizing the data

## summarize

The summarize command gives you an overview of the statistical properties of a variable and can be a good way to get a numerical view of the data distribution. The `detail` option gives you, as you can guess, more detail.

```
summarize cpi
summarize cpi, detail
```

# Visualizing the data

## hist

This command produces a histogram that is a great way to see the distribution of data.

```
hist cpi
```
Changing the number of bins and the y-axis to frequency instead of density:
```
hist cpi, frequency bin(30)  
```

## twoway scatter

This command allows you to plot two variables against one another to see their relationship. There are many, many options to the scatter plot. Please read the help file and figure out which options will work for you. Sample usage

```
twoway scatter coc cpi
** Now with a title and plus symbols
twoway scatter coc cpi, title("Two Measures of Corruption Perceptions") msymbol(plus)
```

## spmap

This command allows you to map data if you have a coordinates data set and have the package installed on your computer. You can install it at home by running the following command:
```
ssc install spmap
```
This package is installed on all computers in Public Affairs 2035B and 2035H. The basic syntax is the following:
```
spmap [variable] using [coordinates dta file], id([id variable]) [other options]
```
To see some options and to see how we used it with our Week 1 data, please look at the lecture file for week 1.

# Saving output to file

## graph export

This command allows you to save any image that was just created to file. It can then be loaded into either Word, LaTeX, Markdown, or however you are creating your reports. It has to be run just after Stata has created the graphic so that it has it stored in memory (unless you have named the graphic to save it to Stata's memory). Note that whatever file suffix you use on the file name will determine what kind of file the image is saved as. PDF is a raster image, and thus will not become pixelated if enlarged.
```
hist cpi
graph export hist.pdf, replace
```
The replace option makes Stata overwrite any `hist.pdf` file that may already exist. Note, this will save the file to your working directory unless you write something like:
```
hist cpi
graph export /new/file/path/hist.pdf, replace
```
Sometimes we need to force the dimensions to be different directly in Stata, and exporting as a PNG is probably sufficient. Then we can use the `width` and `height` options to change the dimensions of the file (in pixels).
```
hist cpi
graph export hist.png, replace width(800) height(550)
```