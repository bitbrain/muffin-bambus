Muffin Bambus
===========

![Bambus Logo](img/bambus-logo.png)

A [Muffin](http://www.richbray.me/muffin) template/theme applicable for Jekyll, written by [Miguel Gonzalez](https://github.com/MyRealityCoding).

Purpose
-------
Bambus is made for [the blog](http://my-reality.de) of Miguel Gonzalez. Any usage and modification and/or duplication is fully allowed.

Design
------
![Bambus Design](img/design.png)

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

### Site title

You can change the default site title in the ```_config.yml``` file:

```yml
name: your:site
```
The colon ```:``` will be highlighted as white. It is recommended to use that because it fits in the theme of bam:bus.

### Navigation Menu

To change the links and icons of the navigation bar, simply modify the file ```_config.yml``` of Jekyll. bam:bus supports [FontAwesome icons](http://fortawesome.github.io/Font-Awesome/icons/). Here is an example how to define a custom link in the navigation bar:
```yml
navigation:
- text: Social
  title: Follow me @tweetmyreality
  url: https://twitter.com/tweetmyreality
  icon: icon-twitter
```

### Meta data

To have some information about your person and a small description, customize the following lines in the ```_config.yml```:

```yml
author:
  name: Miguel Gonzalez
  email: miguel-gonzalez@gmx.de>
  url: http://my-reality.de
  description: My <a>name</a>
```

### Links

To add links in the footer, simply add the following lines into the file ```_config.yml:

```yml
links:
- url: link
  name: Link1
- url: link
  name: Link2
- url: link
  name: Link3
```

Development
-----------
To get involved simply fork this theme and make your improvements. Additionally some of them are mentioned in the issues section of bambus or mail to [miguel-gonzalez@gmx.de](mailto:miguel-gonzalez@gmx.de).


