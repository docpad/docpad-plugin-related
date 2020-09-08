# History

## v2.6.0 2020 September 8

-   Updated dependencies, [base files](https://github.com/bevry/base), and [editions](https://editions.bevry.me) using [boundation](https://github.com/bevry/boundation)

## v2.5.0 2020 August 6

-   Updated dependencies, [base files](https://github.com/bevry/base), and [editions](https://editions.bevry.me) using [boundation](https://github.com/bevry/boundation)
-   Minimum required node version changed from `node: >=0.12` to `node: >=10` to keep up with mandatory ecosystem changes

## v2.4.0 2018 July 11

-   Updated base files using [boundation](https://github.com/bevry/boundation)
-   Compiled with CoffeeScript v2
-   Updated dependencies

## v2.3.0 2017 April 18

-   Updated base files
-   Bumped minimum node version to >=0.12 due to [failed builds on earlier](https://travis-ci.org/docpad/docpad-plugin-related/builds/223019640)

## v2.2.2 2013 December 16

-   Fixed `ReferenceError: me is not defined` (regression since v2.2.1)

## v2.2.1 2013 December 16

-   Relations are now determined as tags are discovered

## v2.2.0 2013 November 28

-   Now use a template helper to get related documents, rather than attaching them to the model - This avoids a cyclic reference problem that causes serialisation to run out of memory
-   Repackaged

## v2.1.0 2013 July 28

-   Renamed `collectionName` to `parentCollectionName` and made it default to `html` instead of `documents`
-   Dependency upgrades

## v2.0.5 2013 March 7

-   Repackaged
-   Dependency upgrades - `coffee-script` 1.4.x to ~1.4.0

## v2.0.4 2012 November 17

-   Added elapsed time in debug log
-   Added a collectionName option to optimize the generation on huge collections

## v2.0.3 2012 October 8

-   Fixed plugin name (`relations` to `related`)

## v2.0.2 2012 August 10

-   Re-added markdown files to npm distribution as they are required for the npm website

## v2.0.1 2012 July 8

-   Cleaned

## v1.1.0

-   Updated for DocPad v5.3
-   Also sets `document.relatedDocuments` which is accessible via `@documentModel.relatedDocuments`

## v1.0.0 2012 April 14

-   Updated for DocPad v5.0
