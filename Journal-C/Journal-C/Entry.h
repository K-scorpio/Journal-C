//
//  Entry.h
//  Journal-C
//
//  Created by Kevin Hartley on 5/31/16.
//  Copyright © 2016 Hartley Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *bodyText;
@property (nonatomic, strong) NSDate *timestamp;

-(instancetype)initWithTitle:(NSString *)title andBodyText:(NSString *)bodyText andTimestamp:(NSDate *)timestamp;

@end
