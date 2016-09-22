//
//  TestPlugin.m
//  testCordova
//
//  Created by Administrator on 16/9/20.
//
//

#import "TestPlugin.h"
#import "TestViewController.h"

@implementation TestPlugin

-(void)testWithTitle:(CDVInvokedUrlCommand *)command{
    if (command.arguments.count>0) {
        //customize argument
        NSString* title = command.arguments[0];
        
        TestViewController* testViewCtrl = [[TestViewController alloc]init];
        [self.viewController presentViewController:testViewCtrl animated:YES completion:^{
            CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"我是OC回传的参数!"];
            testViewCtrl.labTitle.text = title;
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        }];
    }else{
        //callback
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"没有参数"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}

@end
