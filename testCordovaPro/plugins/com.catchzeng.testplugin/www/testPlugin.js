var exec = require("cordova/exec");

function TestModel() {};

TestModel.prototype.testPlugin = function (success,fail,option) {
     exec(success, fail, 'testPlugin', 'testWithTitle', option);
};

var testModel = new TestModel();
module.exports = testModel;