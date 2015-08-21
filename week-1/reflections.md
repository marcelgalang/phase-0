#1.1 Think About Time Reflection
Time boxing and the Fogg Method were the two ideas that were both new and most intriguing.  Time boxing, the practice of working for a set amount of time as opposed to the completion of a task, is a  good way to get working.  I like the way time boxing takes the pressure off of needing to finish or accomplish a specific task and redirects the focus on the continuation of work and seeing what was completed.  I do use a version of this, the Pomodoro Technique, often.  One way I’ve learned to use the technique better is to not allow myself to get stuck on a concept.  Time boxing seems to suggest “putting a pin in it” if it slows you down too much.

I will start to monitor my workflow habits more closely to see what I do that works and what doesn’t.  Here is where I see the value of the Fogg method, which is finding a specific behavior to be incorporated, find the easiest way to do it, and then find or create a trigger for that new behavior.  For example, I want to type faster.  So maybe I will find another habit I currently have to precede/be concurrent to 5 minutes of typing practice.  Also, I could use the Fogg method to incorporate 2 minute meditation into my daily routine.

My Phase 0 Time Management approach can be given the slogan “Keep Working”.  I’ve experienced a tendency to get stuck, lose time and be frustrated as opposed to shifting my attention to other materials or topics that I can find gains in.  I can be confused; that is to be expected. But I don’t need to stop working.  I can always keep moving and then maybe the challenging bit will make itself known to me as I work.  Or perhaps the other concept I am working on will help explain what confuses me.  Time boxing and Pomodoro technique will get me working and stay working.  Meditation and mindfulness will help keep me from shaming myself out of working because I don’t get a concept immediately.

#1.2 The Command Line Reflection
1- A shell is the command line interface, meant to be analogous to the teletype of old computers of the past.  Bash is a type of shell used in Unix.

2- The video by Steven Harms was in depth but moved quickly and with simple explanations.  It wasn’t until reading through the Crash Course that I understood many of the commands and processes Mr. Harms displayed.  As for the material, piping and redirection  are still unclear of how implement correctly.

3- I was successful with all the commands except rmdir, that had me using rm -f instead due to an error that claimed the file was not empty although it showed to be.  Apropos also seemed difficult to decipher its findings.

4- The navigating commands of ls, rm, mk, cd were the most important basic commands.  However I can see how piping and redirection would be very useful if using the shell often.

-pwd print working directory, determines where in the command line the user is
-ls list contents
-mv move  Move, rename, and copy items using the command line
-cd change directory that is being viewed
-../ Navigate between directories using the command line
-touch create a file
-mkdir make a directory
-less page through a file,  Look inside files using the command line
-rmdir remove directory
-rm remove
-help (man) read a manual page, Access help using the command line
#1.4 Forking and Cloning Reflection
Github Repo Instructions
Creating a New Repository or repo for short.
Create a github.com account
Click on the plus sign (+) in the top right corner next to your avatar.  Here choose “New repository” from the drop down.
Name the repository
For our purposes, select “public” for your repository visibility and add an “MIT License”
Click create repository
Now let’s fork and clone that repo.  Forking creates another version of a repo leaving the original unaffected.  To fork:
Go to the repo page you just created
In the top right corner is the Fork button.  Click on it.
the prompt will ask you to choose where the fork is going.  Choose your github account.
Open the new forked repo to validate it worked.
Next we need to clone the forked repo to our local computer.  In other words, put a copy on our drive so we can access it in the CLI.
On the forked repo page, look down the right margin for the Clone URL.  This may be a SSH clone URL or a HTTPS URL.  If it shows as a SSH URL (or Subversion) click on the HTTPS link to change it to HTTPS.
Once the URL is a HTTPS URL, copy the URL.
Open your CLI (Terminal for OSX)
Direct to where you want to copy the repo locally.
When in the directory you want the repo enter : git clone and paste in the HTTPS URL.  Here is an example.
$git clone https://github.com/username/phase-0.git
Congrats.  You have just created, forked and cloned a repo!  Now do it five more times and then find someone to teach it to.
The most challenging part of this section was slowing down to the correct speed to make Github Repository instructions.  You had to make sure to not miss steps and be very clear to the audience.  You also had to make sure not to make too many assumptions about the audience’s knowledge base.  I assumed they had little exposure to git and Github.
