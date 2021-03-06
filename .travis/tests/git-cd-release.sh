set -e

# change workdir to travis-gitcd
cd ~/build/gitcd-io/travis-gitcd

# git-cd finish with deleting the feature branch
/usr/bin/expect <<EOD
spawn git-cd release
expect "Whats the current tag number you want to deliver?"
send "$TRAVIS_JOB_NUMBER\n"
expect "What message your new tag should have?"
send "New Travis Release $TRAVIS_JOB_NUMBER\n"
expect
EOD

# assert that the new tag exists

# change back to original workdir
cd -