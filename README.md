# Related Plugin for [DocPad](https://docpad.org)

[![Build Status](https://secure.travis-ci.org/docpad/docpad-plugin-related.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-related "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-related.png)](https://npmjs.org/package/docpad-plugin-related "View this project on NPM")
[![Flattr donate button](https://raw.github.com/balupton/flattr-buttons/master/badge-89x18.gif)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://www.paypalobjects.com/en_AU/i/btn/btn_donate_SM.gif)](https://www.paypal.com/au/cgi-bin/webscr?cmd=_flow&SESSION=IHj3DG3oy_N9A9ZDIUnPksOi59v0i-EWDTunfmDrmU38Tuohg_xQTx0xcjq&dispatch=5885d80a13c0db1f8e263663d3faee8d14f86393d55a810282b64afed84968ec "Donate once-off to this project using Paypal")

Adds support for related documents to [DocPad](https://docpad.org)


## Install

```
npm install --save docpad-plugin-related
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

Both posts will be related through the `animal` tag. In the template, it's now possible to loop through the relatedDocuments collection, here in *eco* :

```
<% for document in @document.relatedDocuments: %>
	<a href="<%= document.url %>"><%= document.title %></a><br/>
<% end %>
```

## Configuration

- `parentCollectionName` defaults to `html` - use to specify the collection we should scan for related documents


## History
You can discover the history inside the `History.md` file


## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2012 [Bevry Pty Ltd](http://bevry.me)

## Contributors
- [Benjamin Lupton](http://balupton.com)
- [Morgan Sutherland](http://msutherl.net)
