//
//  AppleSearchAPI.m
//  PodCastApp
//
//  Created by Donkemezuo Raymond Tariladou on 8/8/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppleSearchAPI.h"

@implementation AppleSearchAPI

- (void)searchPodcast {
    
    NSLog(@"Searching podcast.....");
    
    NSString *endPointURL = @"https://itunes.apple.com/search?media=podcast&limit=200&term=swift";
    
    NSURL *url = [NSURL URLWithString:endPointURL];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    
    NSURLSessionDataTask * task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error != nil) {
            NSLog(@"Error: %@", error);
        } else {
           NSLog(@"data: %@", data);
        }
    }];
    [task resume];
}


@end
