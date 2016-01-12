//
//  ViewController.m
//  Lesson 26 HW 2
//
//  Created by Alex on 11.01.16.
//  Copyright © 2016 Alex. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@property (assign, nonatomic) CGFloat scale;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
        
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - Actions

- (IBAction)actionSegmentedControl:(UISegmentedControl*)sender {
    

    
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.picImageView.image = [UIImage imageNamed:@"1.jpg"];
            break;
            
        case 1:
            self.picImageView.image = [UIImage imageNamed:@"2.jpg"];
            break;
            
        case 2:
            self.picImageView.image = [UIImage imageNamed:@"3.jpg"];
            break;
            
        default:
            break;
    }
    
}

- (IBAction)actionRotationSwitch:(UISwitch*)sender {
    
    if (sender.isOn) {
        [UIView animateWithDuration:2.1-self.sliderUniversal.value
                              delay:0
                            options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             self.picImageView.transform = CGAffineTransformRotate(self.picImageView.transform, 2*M_PI/5);
                         } completion:^(BOOL finished) {
                             [self actionRotationSwitch:sender];
                         }];
    }
    
}

- (IBAction)actionScale:(UISwitch*)sender {
    
 
    
     
     if (sender.isOn) {
         
         
         if (self.scale ==2) self.scale = 0.5;
         else self.scale = 2;
         
     [UIView animateWithDuration:2.1-self.sliderUniversal.value
     delay:0
     options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState
     animations:^{
     self.picImageView.transform = CGAffineTransformScale(self.picImageView.transform, self.scale, self.scale);
     } completion:^(BOOL finished) {
     [self actionScale:sender];
     }];
     }
    
}




- (IBAction)actionTranslation:(UISwitch *)sender {
    
    if (sender.isOn) {
        
        CGPoint newCenter = CGPointMake(arc4random_uniform(150)+150, arc4random_uniform(150)+150);
        

        [UIView animateWithDuration:2.1-self.sliderUniversal.value
                              delay:0
                            options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             self.picImageView.center = newCenter;
                         } completion:^(BOOL finished) {
                             [self actionTranslation:sender];
                         }];
    }
    
 
}


@end
