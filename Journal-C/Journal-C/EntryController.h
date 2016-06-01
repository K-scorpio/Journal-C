//
//  EntryController.h
//  Journal-C
//
//  Created by Kevin Hartley on 5/31/16.
//  Copyright © 2016 Hartley Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (nonatomic, strong) NSMutableArray *entries;
//@property (nonatomic, strong) 

+ (EntryController *)sharedInstance;

- (void)addEntry:(Entry *)entry;
- (void)removeEntry:(Entry *)entry;

@end
