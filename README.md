coderwall_api
=============

* ***This repository is archived***
* ***No longer maintained***
* ***All versions have been yanked from https://rubygems.org/ for releasing valuable namespace for others***

Description
-----------

An API wrapper for the coderwall.com


Features
--------

See [coderwall API](https://coderwall.com/api)

Usage
-----

### Overview

Try this

```ruby
require 'coderwall'

Coderwall.user('kachick') do
  p name      #=> "Kenichi Kamiya"
  p location #=> "Japan"
  p endorsements  #=> 1
  p accounts.any?{|ac|ac.service == 'github'} #=> true
  p badges.select{|badge|/ruby/i =~ badge.description}.size #=> 2
end
```

### More API

See code :)

Requirements
-------------

* Ruby - [2.5 or later](http://travis-ci.org/#!/kachick/coderwall_api)

Install
-------

```bash
$ gem install coderwall_api
```

Build Status
-------------

[![Build Status](https://secure.travis-ci.org/kachick/coderwall_api.png)](http://travis-ci.org/kachick/coderwall_api)

Link
----

* [Home](http://kachick.github.com/coderwall_api)
* [code](https://github.com/kachick/coderwall_api)
* [API](http://kachick.github.com/coderwall_api/yard/frames.html)
* [issues](https://github.com/kachick/coderwall_api/issues)
* [CI](http://travis-ci.org/#!/kachick/coderwall_api)
* [gem](https://rubygems.org/gems/coderwall_api)

License
--------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.

