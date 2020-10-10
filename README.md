# Strut for YunoHost

[![Integration level](https://dash.yunohost.org/integration/strut.svg)](https://dash.yunohost.org/appci/app/strut)  
[![Install Strut with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=strut)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allow you to install Strut quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
Strut is an HTML/JS slide presentation editor. It work with [impress.js](http://bartaz.github.com/impress.js/#/bored).

**Shipped version:** 20171224-1

## Screenshots

![](https://f.cloud.github.com/assets/1009003/515405/f1003c6a-be74-11e2-84b9-14776c652afb.png)

## Demo

* [Official demo](http://strut.io/editor/index.html)

## Configuration

If configuration is needed, feel free to contribute.

## Documentation

 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-users support

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/strut%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/strut/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/strut%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/strut/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/strut%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/strut/)

## Limitations
No import/export from/to OpenDocument or pptx.

## Additional information

* This package doesn't contained the exact sources of the upstream https://github.com/tantaman/Strut. 

Initial Strut software includes Google Analytics and is bind to Imgur to upload images. This kind of trackers or external services are not accepted by the package team of YunoHost. So this trackers are removed from sources, a pull request has been done and merged but has finally be removed from the strut upstream with no explanation. In more, Strut developers don't deliver builded versions. To build a version it needs grunt, that can't be removed easily.

To avoid to take time to build this html/js app, this package setups a builded version of Strut with the patch that remove Google Analytics and Imgur dependencies. It is a build of this version https://github.com/tantaman/Strut/commits/6761b141ee7aa622916e2d23cced84ee95618cce . So it's not the more recent version.

## Links

 * Report a bug: https://github.com/YunoHost-Apps/strut_ynh/issues
 * Strut website: http://strut.io
 * Strut repository: https://github.com/MohannadNaj/Strut
 * YunoHost website: https://yunohost.org/

---

Developers info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/strut_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/strut_ynh/tree/testing --debug
or
sudo yunohost app upgrade strut -u https://github.com/YunoHost-Apps/strut_ynh/tree/testing --debug
```
