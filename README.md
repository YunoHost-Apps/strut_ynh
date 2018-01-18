strut_ynh
===============

Strut package for YunoHost

## IMPORTANT NOTE ABOUT THIS PACKAGE
This package doesn't contained the exact sources of the upstream https://github.com/tantaman/Strut. 

Initial Strut software includes Google Analytics and is bind to Imgur to upload images. This kind of trackers or external services are not accepted by the package team of YunoHost. So this trackers are removed from sources, a pull request has been done and merged but has finally be removed from the strut upstream with no explanation. In more, Strut developers don't deliver builded versions. To build a version it needs grunt, that can't be removed easily.

To avoid to take time to build this html/js app, this package setups a builded version of Strut with the patch that remove Google Analytics and Imgur dependencies. It is a build of this version https://github.com/tantaman/Strut/commits/6761b141ee7aa622916e2d23cced84ee95618cce . So it's not the more recent version.


## Official Website: http://strut.io 

## About Strut

[![Facelift](https://f.cloud.github.com/assets/1009003/515405/f1003c6a-be74-11e2-84b9-14776c652afb.png)](http://strut.io)

#### A GUI / Authoring Tool for ImpressJS and Bespoke.js ####

Don't know what ImpressJS is?  Check out the ImpressJS demo presentation: https://impress.github.io/impress.js/#/bored

### Start using Strut! http://strut.io/editor/
(works in Firefox, Chrome and Safari with basic support for IE10)

