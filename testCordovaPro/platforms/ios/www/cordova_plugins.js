cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
    {
        "id": "com.catchzeng.testplugin.testModel",
        "file": "plugins/com.catchzeng.testplugin/www/testPlugin.js",
        "pluginId": "com.catchzeng.testplugin",
        "clobbers": [
            "testModel"
        ]
    }
];
module.exports.metadata = 
// TOP OF METADATA
{
    "cordova-plugin-whitelist": "1.3.0",
    "com.catchzeng.testplugin": "1.0.0"
};
// BOTTOM OF METADATA
});