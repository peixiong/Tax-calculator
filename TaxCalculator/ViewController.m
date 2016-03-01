//
//  ViewController.m
//  TaxCalculator
//
//  Created by lengshan on 2/29/16.
//  Copyright © 2016 Amber. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property double sfTax, chiTax, nyTax;
@property (weak, nonatomic) IBOutlet UILabel *resultLable;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sfTax = 0.0875;
    self.chiTax = 0.1025;
    self.nyTax = 0.08875;
}
- (IBAction)onCalculateButtonTapped:(UIButton *)sender {
    int amountSpecifiedByUser = self.priceTextField.text.intValue;
    double tax;
    if (self.segmentControl.selectedSegmentIndex == 0){
        tax = self.sfTax;
    } else if (self.segmentControl.selectedSegmentIndex == 1){
        tax = self.chiTax;
    } else if (self.segmentControl.selectedSegmentIndex == 2){
        tax = self.nyTax;
    }
    self.resultLable.text = [[NSString alloc] initWithFormat: @"$%0.2f", amountSpecifiedByUser * tax];
}

@end
