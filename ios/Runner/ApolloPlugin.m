//
//  ApolloPlugin.m
//  Runner
//
//  Created by Chen-Hao Ku on 2023/1/5.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>
#import "ApolloApi.h"
#import "ApolloPlugin.h"

@implementation ApolloPlugin

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
    NSObject<FlutterPluginRegistrar>* registrar = [registry registrarForPlugin:@"ApolloPlugin"];
    ApolloPlugin* api = [[ApolloPlugin alloc] init];
    ApolloApiSetup([registrar messenger], api);
}

- (nullable NSString *)introductionWithError:(FlutterError *_Nullable *_Nonnull)error {
    NSString *message = @"Hello, This is Applo Plugin";
    return message;
};

- (nullable NSString *)greetingWho:(NSString *)who error:(FlutterError *_Nullable *_Nonnull)error {
    NSString *message = [NSString stringWithFormat:@"Hi, %@. I am Apollo Plugin", who];
    return message;
};



@end


