#!/bin/sh

# Install script for bambus
# Author: Miguel Gonzalez <miguel-gonzalez@gmx.de>
# Version: 1.0

function prepare {

	# Check dependencies: Git

	if [[ ! -x "`which git`" ]]; then
		echo "Sorry, but you need to have git installed for installation to proceed."
		echo ""
		echo "Ubuntu: sudo apt-get install git-core"
		echo "OS X: brew install git"
		echo ""
		exit 1
	fi

	# Check dependencies: Ruby

	if [[ ! -x "`which ruby`" ]]; then
		echo "Sorry, but you need to have ruby installed for installation to proceed."
		echo ""
		echo "Ubuntu: sudo apt-get install ruby"
		echo "OS X: brew install ruby"
		echo ""
		exit 1
	fi

	# Check dependencies: Ruby Gems

	if [[ ! -x "`which gem`" ]]; then
		echo "Sorry, but you need to have ruby installed for installation to proceed."
		echo ""
		echo "Ubuntu: sudo apt-get install rubygems"
		echo "OS X: brew install rubygems"
		echo ""
		exit 1
	fi

	echo ""
	read -p "Welcome to bambus theme installation! Do you want to install bambus now? [Y/N]?" f
	[[ "$f" == y* ]]
}

function install {
	echo "Install bambus theme.."

	# Dependency: Jekyll

	gem install jekyll

	# Dependency Sass

	gem install sass

	echo "Building your site.."

	sh build.sh
}

function run {
	echo "Running your site on localhost (port: 4000).."
	jekyll serve &
	echo "Your site has been successfully deployed on http://localhost:4000/"
}

if intro; then
	install
	run	
	echo "Done."
else
	echo "Aborted."
fi


