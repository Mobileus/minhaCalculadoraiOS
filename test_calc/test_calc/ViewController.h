//
//  ViewController.h
//  test_calc
//
//  Created by Vinnicius Ferreira da Silva on 25/08/15.
//  Copyright (c) 2015 Vinnicius Ferreira da Silva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *valueX;
@property (weak, nonatomic) IBOutlet UITextField *valueY;
@property (weak, nonatomic) IBOutlet UITextField *valueResult;

@property (weak, nonatomic) IBOutlet UIImageView *plus;
@property (weak, nonatomic) IBOutlet UIImageView *minus;
@property (weak, nonatomic) IBOutlet UIImageView *div;
@property (weak, nonatomic) IBOutlet UIImageView *mult;

@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *plus_tap;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *mult_tap;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *minus_tap;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *div_tap;

@end

