# Scribe Test Harness

Provides a number of helpers to aid in writing tests for Scribe.

## Setting up tests

You can use the scribe test harness to help with testin Sciribe but it
needs to be properly initialised.

An example ```setup.js``` file is shown below

```
var helpers = require('scribe-test-harness/helpers');
var initializeScribe = helpers.initializeScribe.bind(null, '[path-to-scribe]');

beforeEach(function() {
  return initializeScribe();
});

```

```initializeScribe``` needs to be called inside the beforeEach
function.


## Accessing WebDriver

If you want access to the underlying WebDriver, you can get it with
```helpers.driver``` but you need to get it inside a ```beforeEach``` block.