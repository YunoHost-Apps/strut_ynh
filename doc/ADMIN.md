## Limitations
No import/export from/to OpenDocument or pptx.

## Additional information

* This package doesn't contained the exact sources of the upstream https://github.com/tantaman/Strut. 

Initial Strut software includes Google Analytics and is bind to Imgur to upload images. This kind of trackers or external services are not accepted by the package team of YunoHost. So this trackers are removed from sources, a pull request has been done and merged but has finally be removed from the strut upstream with no explanation. In more, Strut developers don't deliver builded versions. To build a version it needs grunt, that can't be removed easily.

To avoid to take time to build this html/js app, this package setups a builded version of Strut with the patch that remove Google Analytics and Imgur dependencies. It is a build of this version https://github.com/tantaman/Strut/commits/6761b141ee7aa622916e2d23cced84ee95618cce . So it's not the more recent version.
