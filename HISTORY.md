# History

## v2.2.2 2013 December 16
- Fixed `ReferenceError: me is not defined` (regression since v2.2.1)

## v2.2.1 2013 December 16
- Relations are now determined as tags are discovered

## v2.2.0 2013 November 28
- Now use a template helper to get related documents, rather than attaching them to the model
	- This avoids a cyclic reference problem that causes serialisation to run out of memory
- Repackaged

## v2.1.0 2013 July 28
- Renamed `collectionName` to `parentCollectionName` and made it default to `html` instead of `documents`
- Dependency upgrades

## v2.0.5 2013 March 7
- Repackaged
- Dependency upgrades
	-  `coffee-script` 1.4.x to ~1.4.0

## v2.0.4 2012 November 17
- Added elapsed time in debug log
- Added a collectionName option to optimize the generation on huge collections

## v2.0.3 2012 October 8
- Fixed plugin name (`relations` to `related`)

## v2.0.2 2012 August 10
- Re-added markdown files to npm distribution as they are required for the npm website

## v2.0.1 2012 July 8
- Cleaned

## v1.1.0
- Updated for DocPad v5.3
- Also sets `document.relatedDocuments` which is accessible via `@documentModel.relatedDocuments`

## v1.0.0 2012 April 14
- Updated for DocPad v5.0
