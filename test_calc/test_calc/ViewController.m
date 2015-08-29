//
//  ViewController.m
//  test_calc
//
//  Created by Vinnicius Ferreira da Silva on 25/08/15.
//  Copyright (c) 2015 Vinnicius Ferreira da Silva. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapHideKeyboard:)];
    [self.view addGestureRecognizer:tapRecognizer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)plusAction:(id)sender {
    if(self.valueX.isFirstResponder || self.valueY.isFirstResponder || self.valueResult.isFirstResponder){
        [self hideKeyboard];
    }else{
        int result = self.valueX.text.intValue + self.valueY.text.intValue;
        self.valueResult.text = [NSString stringWithFormat:@"%d", result];
    }
}

- (IBAction)mutipleAction:(UITapGestureRecognizer*)sender {
    if(self.valueX.isFirstResponder || self.valueY.isFirstResponder || self.valueResult.isFirstResponder){
        [self hideKeyboard];
    }else{
        int result = self.valueX.text.intValue * self.valueY.text.intValue;
        self.valueResult.text = [NSString stringWithFormat:@"%d", result];
    }
}

- (IBAction)minusAction:(id)sender {
    if(self.valueX.isFirstResponder || self.valueY.isFirstResponder || self.valueResult.isFirstResponder){
        [self hideKeyboard];
    }else{
        int result = self.valueX.text.intValue - self.valueY.text.intValue;
        self.valueResult.text = [NSString stringWithFormat:@"%d", result];
    }
}

- (IBAction)divisionAction:(id)sender {
    if(self.valueX.isFirstResponder || self.valueY.isFirstResponder || self.valueResult.isFirstResponder){
        [self hideKeyboard];
    }else if(self.valueY.text.integerValue == 0){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Ops..." message:@"Divisão por 0, champs?" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alertView show];
    }else{
        int result = self.valueX.text.intValue / self.valueY.text.intValue;
        self.valueResult.text = [NSString stringWithFormat:@"%d", result];
    }
}

-(void)tapHideKeyboard:(UIGestureRecognizer *)sender
{
    [self hideKeyboard];
}

-(void)hideKeyboard{
    [self.valueX resignFirstResponder];
    [self.valueY resignFirstResponder];
    [self.valueResult resignFirstResponder];
}

@end
