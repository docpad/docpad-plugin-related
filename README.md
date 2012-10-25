# Related Plugin for DocPad
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

## Options

- *collectionName* : can be used to narrow the scope of the plugin to a specific collection and therefore improve performance.

## History
You can discover the history inside the `History.md` file


## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2012 [Bevry Pty Ltd](http://bevry.me)

## Contributors
- [Benjamin Lupton](http://balupton.com)
- [Morgan Sutherland](http://msutherl.net)
