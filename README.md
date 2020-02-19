# Using Travis CI to run an R script and push the result to GitHub

This is a template repository with an example on how to run an R script and push the result to 
the GitHub master branch. 

You need to do the following (you need to replace the username: relund and repo name: 
gHActionsDeployR in the urls):

- Setup a GitHub repo (e.g. a clone of this repo). 

- Generate a personal access token at https://github.com/settings/tokens and copy it to 
  https://github.com/relund/gHActionsDeployR/settings/secrets (name it token).
  
- Modify `install.R`, such that the R packages you need are installed.

- Modify `script.R` with the R script you need to run (currently just append content to the 
  `data.csv` file).

- Currently the workflow run on push (see `.github/workflows/run_script.yaml` or using cron).