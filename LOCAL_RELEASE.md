Local Release Instructions
==========================

# switch to master branch
# create a local branch <version>-release
git checkout master
git checkout -b $VERSION-release

# initial clean
rm -r build
rm -r lib
mkdir -p build

#
# STEP 1: BUILD ALPACA
#

bower install

# build alpaca
# copy to dist (for bower)
gulp _deploy

# add the ./dist directory to the commit
git add dist -f

# commit changes to local branch
git commit -m "alpaca release build $VERSION"

#
# STEP 3: TAG REPO AND PUBLISH
#

# create a tag
git tag $VERSION

# push the tag
git push --tags

#
# CLEANUP
#

# delete local branch
git checkout master
git branch -D $VERSION-release