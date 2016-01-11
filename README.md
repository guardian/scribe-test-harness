# Scribe Test Harness

Test utilities for use with the Scribe and its plugins.

## Setting up tests

You can use the scribe test harness to help with testing Scribe but it
needs to be properly initialised.

An example ```setup.js``` file is shown below

```
var helpers = require('scribe-test-harness/helpers');
var initializeScribe = helpers.initializeScribe.bind(null,
'[path-to-scribe]', 'scribe-options');

beforeEach(function() {
  return initializeScribe();
});

```

```initializeScribe``` needs to be called inside the beforeEach
function.


## Accessing WebDriver

If you want access to the underlying WebDriver, you can get it with
```helpers.driver``` but you need to get it inside a ```beforeEach```
block.

## Selenium Browser Bugs

Selenium has some quirks around key input and treeWalker in older
versions of Chrome. This may cause some oddness and can be the cause
of failing tests.
