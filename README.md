Description
===========

Adds new locales and generates them

Requirements
============

Tested on Debian Squeeze
Tested on Ubuntu 12 (precise)

Attributes
==========

* `node[:localegen][:lang]` - is an array of locales you wish to add and generate. 

Usage
=====

Include the default recipe in your run list.


Change Log
==========
0.0.1 - Initial version by dan@danhart.co.uk

0.0.2 - Revised by sean@linenine.net (logikal)
Adds the following:
* Support for Ubuntu 12
* Template based locale file - Stop appending to the locale file
* More idempotency by not running execute unless template has change
