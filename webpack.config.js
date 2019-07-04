const path = require('path');
const CopyPlugin = require('copy-webpack-plugin');

// function resolve (dir) {
//     return path.join(__dirname, dir);
// }

module.exports = {
    entry: "./main.js",
    output: {
        path: path.resolve(__dirname, '../cordova-plugin-view')
    },
    mode: 'production',
    plugins: [
        new CopyPlugin([
            {from: path.resolve(__dirname, './MyViewAndroid/app/src/main/java/com/wandong/cordova/myview'),to: path.resolve(__dirname, '../cordova-plugin-view/src/android'),ignore: ['MainActivity.java']},
            {from: path.resolve(__dirname, './MyViewAndroid/app/src/main/res/layout/activity_my.xml'),to: path.resolve(__dirname, '../cordova-plugin-view/src/android/activity_my1.xml')},
            {from: path.resolve(__dirname, './TestCordovaIOS/TestCordovaIOS/Plugins'),to: path.resolve(__dirname, '../cordova-plugin-view/src/ios')}
        
        ])
       
    ],
    
};
