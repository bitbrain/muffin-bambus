#!/bin/sh
jekyll build
sass --watch css/style.scss:_site/css/style.css --style compressed

exit 0
