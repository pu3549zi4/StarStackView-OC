//
//  ViewController.h
//  StarStackView-OC
//
//  Created by Xmart on 16/8/4.
//  Copyright © 2016年 Paul.Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *addStarBtn;
@property (weak, nonatomic) IBOutlet UIButton *removeStar;
@property (weak, nonatomic) IBOutlet UIStackView *verticalSV;
@property (weak, nonatomic) IBOutlet UIStackView *horSV;

@end

