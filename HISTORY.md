# History

- v2.2.2 December 16, 2013
	- Fixed `ReferenceError: me is not defined` (regression since v2.2.1)

- v2.2.1 December 16, 2013
	- Relations are now determined as tags are discovered

- v2.2.0 November 28, 2013
	- Now use a template helper to get related documents, rather than attaching them to the model
		- This avoids a cyclic reference problem that causes serialisation to run out of memory
	- Repackaged

- v2.1.0 July 28, 2013
	- Renamed `collectionName` to `parentCollectionName` and made it default to `html` instead of `documents`
	- Dependency upgrades

- v2.0.5 March 7, 2013
	- Repackaged
	- Dependency upgrades
		-  `coffee-script` 1.4.x to ~1.4.0

- v2.0.4 November 17, 2012
	- Added elapsed time in debug log
	- Added a collectionName option to optimize the generation on huge collections

- v2.0.3 October 8, 2012
	- Fixed plugin name (`relations` to `related`)

- v2.0.2 August 10, 2012
	- Re-added markdown files to npm distribution as they are required for the npm website

- v2.0.1 July 8, 2012
	- Cleaned

- v1.1.0
	- Updated for DocPad v5.3
	- Also sets `document.relatedDocuments` which is accessible via `@documentModel.relatedDocuments`

- v1.0.0 April 14, 2012
	- Updated for DocPad v5.0