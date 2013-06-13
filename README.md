Muffin Bambus
===========

A [Muffin](http://www.richbray.me/muffin) template/theme applicable for Jekyll, written by [Miguel Gonzalez](https://github.com/MyRealityCoding).

Purpose
-------
Bambus is made for [the blog](http://my-reality.de) of Miguel Gonzalez. Any usage and modification and/or duplication is fully allowed.

Getting started
---------------

To use this theme you have to install the following software on your system:

* [Ruby](http://www.ruby-lang.org/de/downloads/)
* [RubyGems](http://rubygems.org/pages/download)
* [Jekyll](http://jekyllrb.com/)
* [Git](http://git-scm.com/downloads)

After installing the software you can launch the site on port 4000. You've to type the following commands first into your console:
```text
# Launch jekyll
jekyll serve
# Launch Sass
sh watch.sh
```

Setup
-----

You can customize the theme without changing code directly.

### Navigation Bar

To change the links and icons of the navigation bar, simply modify the file ```_config.yml``` of Jekyll. bam:bus supports FontAwesome icons. Here is an example how to define a custom link in the navigation bar:
```yml
navigation:
- text: Social
  title: Follow me @tweetmyreality
  url: https://twitter.com/tweetmyreality
  icon: icon-twitter
```

### Footer

To add links to the footer modify ```_include/links.html```.

Development
-----------
To get involved simply fork this theme and make your improvements. Additionally some of them are mentioned in the issues section of bambus or mail to [miguel-gonzalez@gmx.de](mailto:miguel-gonzalez@gmx.de).


