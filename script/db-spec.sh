#!/bin/sh
set -e
cd db/test/backwards_compatibility
export BUNDLE_GEMFILE=$PWD/Gemfile
bundle exec appraisal update
bundle install
bundle exec appraisal install
bundle exec rake
