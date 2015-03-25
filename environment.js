var path = require('path');
var fs = require('fs');
var mkdirp = require('mkdirp');
var glob = require('glob');

export.ensureDirectory = function(directoryName) {
  if (!fs.existsSync(directoryName)) {
    mkdirp.sync(directoryName);
  }
};

export.loadSpecifications = function(mocha, directory) {
  glob(directory + '**/*.spec.js', function (error, files) {
    if(error) {
      console.log(error);
      process.exit(1);
    }

    files.forEach(function (filePath) {
      mocha.addFile(filePath);
    });

  });
};
