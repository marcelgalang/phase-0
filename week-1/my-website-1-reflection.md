## 4. Open Source and Repo Setup Reflection

- Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.
- Describe what open source means.
- What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?
- Assess the importance of using licenses.
- What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?
- Did you find any resources on your own that helped you better understand a topic? If so, please list it.

Add your reflection here. Remove the comment markers

Creating and cloning a repository on Github:
  1. Create a github.com account
  2. Click on the plus sign (+) in the top right corner next to your avatar.  Here choose “New repository” from the drop down.
  3.Name the repository
  4.For our purposes, select “public” for your repository visibility and add an “MIT License”
  5.Click create repository
  6. On your new repo page, look down the right margin for the Clone URL.  This may be a SSH clone URL or a HTTPS URL.  If it shows as a SSH URL (or Subversion) click on the HTTPS link to change it to HTTPS.
  7.Once the URL is a HTTPS URL, copy the URL.
  8.Open your CLI (Terminal for OSX)
  9.Direct to where you want to copy the repo locally.
  10. When in the directory you want the repo enter : git clone and paste in the HTTPS URL.

Open source is software that is freely distributed with it's souce code.  This allows anyone to develop, expand and create new features to the software while the creators of the original maintain rights to the original software.  Open source is beneficial for a the develpoer community since it allows it to share it's code thus exposing new ways of thinking and approching problems without the worry of copyright infringement.  That part is great.  However I can see how a closed environment can be better.  If a developer only wants a certain caliber of work associated with the software this can be controlled by not open sourcing.  Financial reasons would be a driver in this.

Licences ensure that the open source content is being used fairly.  If someone else capitalizes on a software then there should be retriubtion.  It also encourages that the use of the open source content is to make improvments upon it to share back with the development community.

This lesson taught me to move around files within the CLI with copy and move (cp and mv).  As with lesson 1.5, I had to slow down to both interpolate the information provided and pay attention to the specific instruction as there was on first impression a lot of it.  But once I got what we were doing conceptually (create a file, add it staging, commit, push, merge etc) then repeating the process became exponetially easier.