//
//  ViewController.m
//  转场动画
//
//  Created by qianfeng on 16/7/29.
//  Copyright © 2016年 Simon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *imageV;
    NSInteger index;
    UILabel *label;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    index = 2;
    imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    imageV.image = [UIImage imageNamed:@"1.jpg"];
    label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.text = @"1";
    label.font = [UIFont systemFontOfSize:20];
    label.textColor = [UIColor redColor];
    [imageV addSubview:label];
    [self.view addSubview:imageV];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CATransition *transition = [CATransition animation];
    //设置转场动画效果
    transition.type = @"cube";
    
    transition.subtype = kCATransitionFromLeft;
    
    [imageV.layer addAnimation:transition forKey:nil];
    
    if (index == 11) {
        index = 1;
    }
    
    imageV.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",index]];
    label.text = [NSString stringWithFormat:@"%ld",index];
    index++;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
