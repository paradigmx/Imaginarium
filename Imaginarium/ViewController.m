//
//  ViewController.m
//  Imaginarium
//
//  Created by Neo on 8/20/14.
//  Copyright (c) 2014 Paradigm X. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// static const NSString *imageURLBase = @"https://x.paradigmx.net/download/assets/images/";
static const NSString *imageURLBase = @"http://paradigmx.net/paradigmx/";

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[imageURLBase stringByAppendingString:segue.identifier]];
        ivc.title = [segue.identifier capitalizedString];
    }
}

@end
