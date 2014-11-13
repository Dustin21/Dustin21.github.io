Introduction to R and Git
========================================================
author: Dustin Johnson
css: sky.css


What is R?
========================================================

R is the fundamental programming language. It is free source, making it open to anyone. There is some important info you must be aware of:

1. R knows data.
2. You can download a plethora of packages from Cran.
3. It is an "object oriented" programming language.
4. R has been exploding the past few years.

![R](https://lh6.googleusercontent.com/-rgV1Mea-prw/AAAAAAAAAAI/AAAAAAAAAAA/SRZRY3VglFU/photo.jpg)

What is Cran?
========================================================

Cran is the god of R - it supplies R with a gigantic repository of all fully-functioning packages that R can use.

You don't download Cran, but anytime you use the command line to install a package from the internet using `install.packages()`, you can believe it is coming from Cran.

Here's some sophisticated use of R's spatial package:
![](http://25.media.tumblr.com/tumblr_m58xbs5Wgo1rs4hm1o1_500.jpg)

RStudio
========================================================

RStudio is an R GUI that makes writing code and accessing certain information a whole lot easier.

As RStudio is a GUI, you must have the R programming language first, then install RStudio.

**Updating RStudio does not update the R programming language!! This must be done in the base R!!**

RStudio let's you access the full power and compatibility of R (and makes it much easier to coordinate).

![](http://www.rstudio.com/wp-content/uploads/2014/03/blue-250.png)

Git
========================================================

Git is a Version Control System (VCS):
>Version control is a system that records changes to a file or set of files over time so that you can recall specific versions later.

Who cares? ...think of it as a time-capsule for programmers and software developers.

1. Retrace your steps
2. Go back in time
3. You deleted something important
4. Someone asks you for a previous version

Github
========================================================

Git is great for working on your own computer, but what if a team wants to work or collaborate? What if you want to access someone else's code?

**Github is the Facebook for programmers and more**

It lets you store all your data online and recover old files at any point in time. It also lets you do the same for other people's repositories! 

You see where this is headed?

========================================================

![](http://seethesource.files.wordpress.com/2014/09/github.jpg)


Git and RStudio
========================================================

RStudio has a git platform that enables easy version control, and can connect you straight to Github.

We need to create a new Github repository and **clone** it into R (tell R where to find the repository and how to connect through **authentication**)

1. Make it private.
2. Make it accessible by me.

**_Let's do it together!_**



R Markdown
========================================================

R Markdown is one of many text editors (LaTeX, Pandoc, etc.), but it works beautifully with R.

It enables you to output HTML documents without writing HTML! It uses a very simply set of rules that govern very powerful operations.

========================================================

**Turn this:**

![](http://www.rstudio.com/images/docs/markdownUntitled.png)

**Into.....**

========================================================

![](http://2.bp.blogspot.com/-PopfvIhIjt0/UI4qbwRauII/AAAAAAAAAic/0jOsEzjq9j4/s1600/MarkdownExample.png)


The Markdown Challenge
========================================================

Use Git to push a `README.md` to a new Github repository. Check the info on the webpage.

Make it look pretty and welcoming.

![](http://www.imgion.com/images/01/You-will-rock.jpg)

