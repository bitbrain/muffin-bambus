#!/bin/sh
jekyll build
sass css/style.scss:_site/css/style.css --style compressed

exit 0
