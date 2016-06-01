//
//  EntryDetailViewController.m
//  Journal-C
//
//  Created by Kevin Hartley on 5/31/16.
//  Copyright © 2016 Hartley Development. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"
#import "Entry.h"

@interface EntryDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryBodyTextField;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWithEntry:self.entry];
    
    self.entryTitleTextField.delegate = self;
    self.entryBodyTextField.delegate = self;
}

- (IBAction)clearButtonTapped:(id)sender {
    self.entryBodyTextField.text = @"";
}

- (IBAction)saveButtonTapped:(id)sender {
    if (self.entry) {
        self.entry.title = self.entryTitleTextField.text;
        self.entry.bodyText = self.entryBodyTextField.text;
        self.entry.timestamp = [NSDate date];
    } else {
        Entry *entry = [[Entry alloc]initWithTitle: self.entryTitleTextField.text andBodyText: self.entryBodyTextField.text andTimestamp:[[NSDate alloc] init]];
        [[EntryController sharedInstance]addEntry:entry];
        self.entry = entry;
    }
    [self.navigationController popViewControllerAnimated:true];
}


-(BOOL) textFieldShouldReturn:(UITextField *) entryTitleTextField {
    [entryTitleTextField resignFirstResponder];
    return YES;
    
}


- (void)updateWithEntry:(Entry *)entry {
    self.entryTitleTextField.text = entry.title;
    self.entryBodyTextField.text = entry.bodyText;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
