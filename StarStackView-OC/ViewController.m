//
//  ViewController.m
//  StarStackView-OC
//
//  Created by Xmart on 16/8/4.
//  Copyright © 2016年 Paul.Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)addStar:(UIButton *)sender {
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"star"]];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.horSV addArrangedSubview:imageView];
    [UIView animateWithDuration:0.25 animations:^{
        [self.horSV layoutIfNeeded];
    }];
}

- (IBAction)removeStar:(UIButton *)sender {
    UIView *star = self.horSV.arrangedSubviews.lastObject;
    UIView *aStar = star;
    if (aStar) {
        [self.horSV removeArrangedSubview:aStar];
        [aStar removeFromSuperview];
        [UIView animateWithDuration:0.25 animations:^{
            [self.horSV layoutIfNeeded];
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
