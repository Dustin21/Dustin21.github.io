# Applied Quantitative Methods - Workshop Series
___

![AQM](AQM_logo.jpg)

___

### <span style="color:#0066CC">Welcome to your official AQM homepage!<span>
(_redirect back to [homepage](http://dustin21.github.io/)_)


Here you will be able to find the workshop resources, including:

* Weekly projects
* Reading assignments
* Slides
* Important links

Please save this page in your bookmarks, as you will be returning to it quite often.

Email: [aqmworkshop@gmail.com](aqmworkshop@gmail.com)

Let the fun begin!

***


### Week #1 - The Awakening

**Part 1** - 
Please download the in-class [activity sheet](https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/activity_sheet.pdf?raw=true).

**Part 2** - 
Follow along with these [slides](Slides/slides01_Intro.html).

Get your software set up:

1. [Install R](http://cran.stat.sfu.ca/)
2. [Install RStudio](http://www.rstudio.com/products/rstudio/download/)
3. [Install Git](http://git-scm.com/)
4. [Set-up Github account](https://github.com/)
5. [Get free student account](https://education.github.com/)
6. [Connect R Studio with Github](http://www.r-bloggers.com/rstudio-pushing-to-github-with-ssh-authentication/), or try [here](http://www.molecularecologist.com/2013/11/using-github-with-r-and-rstudio/)
7. Become familiar with **commit**, **pull**, **push** routine.
8. Upload your first `README.md` to your new repository!

#### Assignment 1 - The Markdown Challenge

Here you will upload a personal `README.md` file to your repository telling us about yourself and what steps you took to *push* your `README.md` to your Github repository. You must include the following in your `README.md`:

1. _italics_, **BOLD**, <span style="color:magenta">colour</span>, etc.
2. A header (try different levels)
3. A [link](http://spatial.ly/2014/11/r-visualisations-design/)
4. Bullet points/numbering
5. An image of your choice

Spice your page up and experiment, as everyone will be viewing it at one point. Here are some [hints](http://assemble.io/docs/Cheatsheet-Markdown.html). Use the forum [Stack Overflow](http://stackoverflow.com/) to get some ideas or to answer any questions you may have. There are some good resources on the forum, and if you have a question, chances are it has already been answered. I still tend to rely on [Google](google.ca) when I'm stuck. Next week, some of you will be selected to present your progress and how you handled *The Markdown Challenge*.


If you are anything like this:
![omg](http://cdn.ebaumsworld.com/thumbs/2013/04/21/033626/83239236/smallreactio.jpg)
ask your fellow team members for assistance!

***
***

### Week #2 - Harder Better Faster Stronger

Here are the week 2 [slides](http://htmlpreview.github.io/?https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week2/week2_slides.html#/)

![HarderBetter](Week2/Kanye.jpg)

**Part 1**
You filled in a review sheet from last week, so let's go over it. Then we can get tapped into our AQM repository and play a game using _push_ and _pull_.

**Part 2**
It is time for R! We will be doing some programming basics. Get ready for the ride. The following links will help you work through the fundamentals and provide some material to work with:

1. [Swirl](http://swirlstats.com/): R tutorials **in R**. Learn by doing!
2. [Intro to R](http://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf): Takes you through the basics and really gets you familiar with R.
3. [Graphical Parameters for plots](http://www.statmethods.net/advgraphs/parameters.html)
4. [Various R data sets](http://vincentarelbundock.github.io/Rdatasets/datasets.html): Examine the ones you like.
5. [Example of data Extraction](http://www.r-tutor.com/r-introduction/data-frame/data-frame-row-slice)
6. [The Full R intro](http://cran.r-project.org/doc/manuals/r-release/R-intro.html): Use this for reference of further investigation.

#### Assignment 2 - R Script Challenge
Here is your awaited challenge for next week: [R Script Challenge](http://htmlpreview.github.io/?https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week2/Rscript_Challenge.html). 

All details and pointers are provided on the assignment. If you need to have any questions, feel free to email/facebook us using the contact info at the top of the page.

Best of luck!

***
***

### Week #3 - Vectors and Matrices

This week we delve into the world of linear algebra and how matrices are used in programming.

Check out the slides [here](https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week3/Vectors%20and%20Matrix%20Algebra%20AQM.pdf?raw=true).

Do your best to get through these primers. The first primer focusses on the theory behind vectors and matrices, then primer 2 delves into an application. It is important that you get familiar with these fundamentals, as we will be relying on them for majority of this workshop.

Primer 1: [Theory of Vectors and Matrices](https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week3/Matrix%20Algebra%20Theory%20Primer.pdf?raw=true)

Primer 2: [Applications of Linear Algebra](https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week3/Matrix%20Albegra%20Application%20Primer.pdf?raw=true)

***
***

### Week #4 - Probability Basics

The world is an uncertain place. It is for this reason that we need a way to quantify uncertainty for the models we use to explain it. We call this probability theory, and it will be the backbone of nearly every model we learn in this workshop. Therefore, the assumptions and limitations of the probability models we use will be one of the most important aspects.

Here are the slides: [Intro to Probability](https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week4/Probability%20AQM.pdf?raw=true)

More will be added for this week soon. For now, study for those finals!

***
***

### Modelling with Simple Linear Regression (SLR)

Welcome to the modelling section of the workshop!

~ [Today's slides](https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week5_Model_regression/Linear%20Regression.pptx?raw=true) ~

Many of you are familiar with the infamous regression, but there's more to it than you might expect. This week we will dig deeper into the simple linear regression to understand its assumptions and how to decide whether it is the model for your application.

_Data for introductory example and in-class activity:_

We can read the following data into R directly from the online source, or save it on your computer and import it from there (I recommend the latter). HINT: the general R function is `read.table()`.

* Hubble data: [Hubble.txt](https://raw.githubusercontent.com/Dustin21/Dustin21.github.io/master/AQM/Week5_Model_regression/Hubble.txt)

* Portfolio Rate of Returns (%): [Portfolio_Return.txt](https://raw.githubusercontent.com/Dustin21/Dustin21.github.io/master/AQM/Week5_Model_regression/Portfolio_Return.txt)

You will be modelling the data above with a linear regression. This will consist of the following:

1. Plotting the data using `plot()`.
2. Fit the regression model using `lm()`.
3. Examine the object and its `str()` & `anova()` - check parameter esimates, and F-stat (why?).
4. Overlay the regression line on the scatterplot with `lines()`.
5. Investigate the 4 assumptions of your model with diagnostic plots (we will cover methods in the workshop).
6. Ask yourself... "Is a linear model reasonable for my data?". If not, how do we progress?

[R source](https://raw.githubusercontent.com/Dustin21/Dustin21.github.io/master/AQM/Week5_Model_regression/workshop_modelling.R) for today's activities.

Please take the time to review the [Regression Theory Primer](https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week5_Model_regression/Regression.pdf?raw=true) for next week! And review the primer for [vectors and matrices](https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week3/Matrix%20Algebra%20Theory%20Primer.pdf?raw=true), as they will be vital as we move into multiple regression.

Assignment (Due Wednesday, Jan. 14th): [Intro to Modelling - SLR Assignment](http://htmlpreview.github.io/?https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week5_Model_regression/SLR_Assignment.html)

***
***

### More Regression

Slides: [Regression.pdf](https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week6_Regression/Regression.pdf?raw=true)

Today's data: [bank.txt](https://raw.githubusercontent.com/Dustin21/Dustin21.github.io/master/AQM/Week6_Regression/bank.txt)

Supplementary material (courtesy of George):

This material is slightely more advanced, but provides great fundamentals to the topics covered in the workshop.

1. [OLS Slides](https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week6_Regression/GS_Linear_Regression_Slides.pdf?raw=true)
2. [OLS Theory](https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week6_Regression/GS_OLS_Notes.pdf?raw=true)

***
***

### Applications in R - Diagnostics

Let's be biostatisticians!

Our data: [gpro.txt](https://raw.githubusercontent.com/Dustin21/Dustin21.github.io/master/AQM/Week7_Prediction/gpro.txt)

What is this data?

biosystems data for ligand activation of G-protein in yeast. The input variables correspond to concentration of ligand and 3 kinetic parameters. The output represents the concentration of part of the complex. Everything has been tranformed and pre-processed for your convenience. The training set consists of the first 4000 observations, while the test set contains the remaining 10000.

Here's some information that can guide you through everything we covered last workshop. I've gathered the most concise and easy to read material from the internet, so hopefully they shed some light onto this workshop if you're feeling confused.

* [QQ-plots](http://people.reed.edu/~jones/Courses/P14.pdf): Some great slides I found covering QQ-plots in detail.
* [Partial Residual Plots](http://www.econ.uiuc.edu/~roger/courses/471/lectures/L4.pdf): Nice overview and proof of why partial residuals are better than basic residuals when plotting against each covariate.
* [Diagnostic Plots of Assumptions](http://www-hsc.usc.edu/~eckel/biostat2/notes/notes10.pdf): General overview of using plots for violations in our regression assumptions.
* [Evaluating Model Prediction](http://scott.fortmann-roe.com/docs/MeasuringError.html): Understanding the use of a training and test set (and beyond). If you want to be super prepared for next week, I recommend you delve further into this material.
* Prediction Error: [simple](http://www.eumetcal.org/resources/ukmeteocal/verification/www/english/msg/ver_cont_var/uos3/uos3_ko1.htm), [detailed](http://www.geosci-model-dev.net/7/1247/2014/gmd-7-1247-2014.pdf): Get an understanding of the method of measuring prediction error and how to compare predictive models.

[R Source](https://raw.githubusercontent.com/Dustin21/Dustin21.github.io/master/AQM/Week7_Prediction/workshop07.R) for the `gpro` application.

***
***

### Cross Validation (CV)

Here are some helpful resources on what we have covered thus far on implementing CV to measure predictive performance of a particular model.

1. [Why CV?](http://robjhyndman.com/hyndsight/crossvalidation/)
2. [Intro to CV methods](http://www.cs.cmu.edu/~schneide/tut5/node42.html)
3. Some [slides](http://research.cs.tamu.edu/prism/lectures/iss/iss_l13.pdf) that may help reinforce your understanding.

[R source](https://raw.githubusercontent.com/Dustin21/Dustin21.github.io/master/AQM/Week8_CV/CV.R) for CV of our linear models with the `gpro` data set.

[**Automating Computation with Loops Assignment**](http://htmlpreview.github.io/?https://github.com/Dustin21/Dustin21.github.io/blob/master/AQM/Week8_CV/Automating_Computation.html): Please try to finish by next week so we can start what you have all been waiting for!

***
***

### Relational Database Management and SQL

In order to construct our models and understand patterns in data, we need the data in the first place! Where do we get this data? How do we extract it?

There are many ways to gather data, but this segment of the workshop will cover relational databases, such as Oracle, which is widely used by firms. We will learn how to extract valuable information from these databases using R-integrated SQL. In essence, we will be able to make queries to the database straight from R and clean/transform the data using R's powerful built-in C++ functions. The following R packages will be used extensively and intertwine with one-another, so better to check them out beforehand:

* [grep](http://www.rdocumentation.org/packages/base/functions/grep): Pattern Matching and Replacement
* [plyr](http://plyr.had.co.nz/): Implements the “split-apply-combine” strategy for data analysis and covers a diverse set of inputs and outputs (e.g., arrays, data.frames, lists).
* [dplyr](http://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html): a new package rooted in [plyr](http://plyr.had.co.nz/) for data manipulation. It is built to be fast, highly expressive, and open-minded about how your data is stored. Just wait until you see how useful this package will truly become!
* [tidyr](http://blog.rstudio.org/2014/07/22/introducing-tidyr/): makes it easy to “tidy” your data (making it neat to work with). [Here](http://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html) is how the packages combine together.
* [ggplot](http://www.ceb-institute.org/bbs/wp-content/uploads/2011/09/handout_ggplot2.pdf): The heaven of data visualisation. If you want nice visuals, I recommend the book [R Graphics Cookbook](http://www.cookbook-r.com/). It is a great introductory resource and manual to refer to.

I found a great overview of Oracle and its database system [here](http://docs.oracle.com/cd/E11882_01/server.112/e40540/intro.htm#CNCPT001). Use it to refresh yourself on how it works, as we will be dealing with Oracle exclusively.

Please take the time to prepare for this Wednesday's workshop on SQL, especially if you haven't been exposed to it before. Here is a great [SQL learning resource](http://www.w3schools.com/sql/) I would like you to follow.

***
***
