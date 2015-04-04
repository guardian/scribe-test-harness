var path = require('path');
var fs = require('fs');
var mkdirp = require('mkdirp');
var glob = require('glob');
var q = require('q');

exports.ensureDirectory = function(directoryName) {
  if (!fs.existsSync(directoryName)) {
    mkdirp.sync(directoryName);
  }
};


exports.loadSpecifications= function(directory, mocha) {
  var deferred = q.defer();

  function unitTestsFirst(a, b) {
      if(a.match('/unit/')) {
        return -1;
      }
      return 1;
  };

  glob(directory, function(error, files) {
    if(error) {
      deferred.reject(error);
    } else {

      files.sort(unitTestsFirst).forEach(function(filePath) {
        console.log(filePath);
        mocha.addFile(filePath);
      });

      deferred.resolve(mocha);
    }
  });

  return deferred.promise;
};
