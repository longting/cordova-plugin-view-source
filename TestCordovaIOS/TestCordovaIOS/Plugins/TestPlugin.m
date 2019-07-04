//
//  TestPlugin.m
//  CordovaLib
//
//  Created by huishidai on 2019/5/14.
//

#import "TestPlugin.h"
#import "TestViewController.h"

@implementation TestPlugin

/**
JS方法名
 */
-(void) show:(CDVInvokedUrlCommand *)command{
    if(command.arguments.count>0){
        NSString* title = command.arguments[0];
        TestViewController* testVC = [[TestViewController alloc] init];
        [self.viewController presentViewController:testVC animated:YES completion:^{
            CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"OC回传参数"];
            testVC.labelTitle.text=title;
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
            
        }];
        
    }else{
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"没有参数"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
    
}

@end
