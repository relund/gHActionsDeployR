# Git commands for push
git config --local user.name "relund"
git config --local user.email "junk@relund.dk"
git add data.csv
git commit --allow-empty -m "Travis build: $TRAVIS_BUILD_NUMBER [ci skip]"
#git remote add origin-pages https://${GH_TOKEN}@github.com/MVSE-outreach/resources.git > /dev/null 2>&1
git push https://relund:$github_token@github.com/relund/testTravis.git HEAD:master 