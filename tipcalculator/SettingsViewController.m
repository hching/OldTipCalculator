//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Henry Ching on 1/3/14.
//  Copyright (c) 2014 YahooHenry. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;

- (IBAction)onTap:(id)sender;

- (void)saveSettings;

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int intValue = [defaults integerForKey:@"defaultTipPct"];
    self.defaultTipControl.selectedSegmentIndex = intValue;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self saveSettings];
}

- (void)saveSettings {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultTipControl.selectedSegmentIndex forKey:@"defaultTipPct"];
    [defaults synchronize];
}

@end
