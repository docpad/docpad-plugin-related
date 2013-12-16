# Related Plugin for [DocPad](https://docpad.org)

<!-- BADGES/ -->

[![Build Status](http://img.shields.io/travis-ci/docpad/docpad-plugin-related.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-related "Check this project's build status on TravisCI")
[![NPM version](http://badge.fury.io/js/docpad-plugin-related.png)](https://npmjs.org/package/docpad-plugin-related "View this project on NPM")
[![Gittip donate button](http://img.shields.io/gittip/bevry.png)](https://www.gittip.com/bevry/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](http://img.shields.io/paypal/donate.png?color=yellow)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")

<!-- /BADGES -->


Adds support for related documents to [DocPad](https://docpad.org)


## Install

``` bash
docpad install related
```

## Usage

Add a tags array to your document meta (in the header). Example :

documents/dog.html.md

```
---
title: My blog post about dogs
tags:
  - animal
---
```

documents/cat.html.md

```
---
title: My blog post about cats
tags:
  - animal
---
```

Both posts will be related through the `animal` tag. In the template.

To output the related documents, use the `getRelatedDocuments(document?)` collection helper like so using [eco](http://docpad.org/p/eco).

```
<% for document in @getRelatedDocuments(): %>
	<a href="<%= document.url %>"><%= document.title %></a><br/>
<% end %>
```


## Configuration

- `parentCollectionName` defaults to `html` - use to specify the collection we should scan for related documents


<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/docpad/docpad-plugin-related/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/docpad/docpad-plugin-related/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Benjamin Lupton <b@lupton.cc> (https://github.com/balupton)

### Sponsors

No sponsors yet! Will you be the first?

[![Gittip donate button](http://img.shields.io/gittip/bevry.png)](https://www.gittip.com/bevry/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](http://img.shields.io/paypal/donate.png?color=yellow)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")

### Contributors

These amazing people have contributed code to this project:

- Benjamin Lupton <b@lupton.cc> (https://github.com/balupton) - [view contributions](https://github.com/docpad/docpad-plugin-related/commits?author=balupton)
- Delapouite (https://github.com/Delapouite) - [view contributions](https://github.com/docpad/docpad-plugin-related/commits?author=Delapouite)

[Become a contributor!](https://github.com/docpad/docpad-plugin-related/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; 2012+ Bevry Pty Ltd <us@bevry.me> (http://bevry.me)

<!-- /LICENSE -->


