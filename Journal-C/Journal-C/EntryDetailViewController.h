//
//  EntryDetailViewController.h
//  Journal-C
//
//  Created by Kevin Hartley on 5/31/16.
//  Copyright © 2016 Hartley Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
#import "EntryController.h"

@interface EntryDetailViewController : UIViewController

@property (strong, nonatomic) Entry *entry;

@end
