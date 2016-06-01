//
//  Entry.m
//  Journal-C
//
//  Created by Kevin Hartley on 5/31/16.
//  Copyright © 2016 Hartley Development. All rights reserved.
//

#import "Entry.h"

static NSString * const TitleKey = @"title";
static NSString * const TextKey = @"bodyText";
static NSString * const TimestampKey = @"timestamp";


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

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    if (self) {
        _title = dictionary[TitleKey];
        _bodyText = dictionary[TextKey];
        _timestamp = dictionary[TimestampKey];
    }
    
    return self;
}

- (NSDictionary *)dictionaryCopy {
    
    return @{
             TitleKey: self.title,
             TextKey: self.bodyText,
             TimestampKey: self.timestamp
             };
}

@end
