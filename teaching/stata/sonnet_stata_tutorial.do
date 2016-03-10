/*
Authors: Luke Sonnet
Date: 2015 09 15
Project: Corruption and Data Analysis course

Purpose: This file provides a template with basic commands to mirror the tutorial
	 online (http://lukesonnet.bol.ucla.edu/files/stata/sonnet_stata_tutorial.html)
*/

// The stuff in green are comments. They are initiated by the double forward-slash
// that you see at the start of these lines.

// 'help' command is used to pull up the help pages for any command
help cd

/*********************************
* Navigating to and loading data *
*********************************/

// 'cd' command is used to change the working directory
cd ~/Dropbox/website/files/stata

// 'use' command is used to load the data in to the workspace, can use a file name
// or a URL
use "http://lukesonnet.bol.ucla.edu/files/stata/example.dta"

// 'clear' command is used to clear the workspace
clear

// We can also pre-clear the workspace as we load data. This is necessary if there
// was already something in the workspace when trying to load new data
use "http://lukesonnet.bol.ucla.edu/files/stata/example.dta", clear

/**********************
* Looking at the data *
**********************/

// 'browse' command opens up the data browser to view the data in spreadsheet
browse

// 'describe' command provides details about each variable and the dataset as a whole
describe

// 'list' command prints a list of the variables you select
list name cpi2013

/********************************
* Important code syntax options *
********************************/

// You can subset the data using an if condition to limit the output to observations
// that satisfy that condition
list name cpi2013 if coc > 0
// This lists the name and CPI score for those who have a coc score of over 0

// Options are command-specific and change the way the command works. We can change
// the output of the list command to include a divider the following way
list name cpi2013 if coc > 0, divider
