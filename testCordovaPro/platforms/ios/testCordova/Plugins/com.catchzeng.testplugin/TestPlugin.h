//
//  TestPlugin.h
//  testCordova
//
//  Created by Administrator on 16/9/20.
//
//

#import <Cordova/CDVPlugin.h>

@interface TestPlugin : CDVPlugin

-(void)testWithTitle:(CDVInvokedUrlCommand *)command;

@end
