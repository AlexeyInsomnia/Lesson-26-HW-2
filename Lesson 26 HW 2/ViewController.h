//
//  ViewController.h
//  Lesson 26 HW 2
//
//  Created by Alex on 11.01.16.
//  Copyright © 2016 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *picSegmentedControl;

@property (weak, nonatomic) IBOutlet UIImageView *picImageView;

@property (weak, nonatomic) IBOutlet UISwitch *rotationSwitch;

@property (weak, nonatomic) IBOutlet UISlider *sliderUniversal;

@property (weak, nonatomic) IBOutlet UISwitch *scaleswitch;

@property (weak, nonatomic) IBOutlet UISwitch *translationSwitch;

- (IBAction)actionSegmentedControl:(UISegmentedControl*) sender;

- (IBAction)actionScale:(UISwitch*)sender;

- (IBAction)actionRotationSwitch:(UISwitch*)sender;

- (IBAction)actionTranslation:(UISwitch *)sender;

@end

