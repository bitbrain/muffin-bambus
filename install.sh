#!/bin/sh

# Install script for bambus
# Author: Miguel Gonzalez <miguel-gonzalez@gmx.de>
# Version: 1.0

echo "Install bambus theme.."

# Dependency: Jekyll

gem install jekyll

# Dependency Sass

gem install sass

echo "Building your site.."

sh build.sh

echo "Running your site on http://localhost:4000/"

jekyll serve &

echo "Done."
