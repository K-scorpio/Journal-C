//
//  Entry.m
//  Journal-C
//
//  Created by Kevin Hartley on 5/31/16.
//  Copyright © 2016 Hartley Development. All rights reserved.
//

#import "Entry.h"

@implementation Entry

-(instancetype)initWithTitle:(NSString *)title andBodyText:(NSString *)bodyText andTimestamp:(NSDate *)timestamp{
    self = [super init];
    if(self) {
        self.title = title;
        self.bodyText = bodyText;
        self.timestamp = [NSDate date];
    }
    return self;
}

@end
