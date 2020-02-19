# Using Travis CI to run an R script and push the result to GitHub

This is a template repository with an example on how to run an R script and push the result to 
the GitHub master branch. 

You need to do the following (you need to replace the username: relund and repo name: 
travisDeployR):

- Setup a GitHub repo (e.g. a clone of this repo) and a Travis CI account. You must activate the
  repo at https://travis-ci.org/relund.

- Generate a personal access token at https://github.com/settings/tokens and copy it to 
  https://travis-ci.org/relund/travisDeployR/settings (name it github_token).
  
- Modify `install.R`, such that the R packages you need are installed.

- Modify `script.R` with the R script you need to run (currently just append content to the 
  `data.csv` file).
  
- Modify `git.sh` with your credentials and push the files you need. Important: the message should 
  contain [ci skip] otherwise the Travis push to GitHub will trigger another Travis build (you 
  have a loop).

- If you want to run the build e.g. daily set the cron job at 
  https://travis-ci.org/relund/travisDeployR/settings.