//
//  ViewController.m
//  DXLAutoCountButtonView
//
//  Created by 丁晓雷 on 2017/11/24.
//  Copyright © 2017年 丁晓雷. All rights reserved.
//

#import "ViewController.h"
#import "DXLAutoButtonView.h"

/**屏幕尺寸-宽度*/
#define kWidth ([UIScreen mainScreen].bounds.size.width)
/**屏幕尺寸-高度*/
#define kHeight ([UIScreen mainScreen].bounds.size.height)
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setView1];
    [self setView2];
    
}
- (void)setView1{
    //上面图片下面文字
    NSArray *title = @[@"医疗",@"寄养",@"宠物",@"美容"];
    NSArray *image = @[@"store_type_1",@"store_type_1",@"store_type_1",@"store_type_1"];
    DXLAutoButtonView *btn = [[DXLAutoButtonView alloc] initWithFrame:CGRectMake(0, 100, kWidth, 100) autoWidthFlowItems:title autoImageItem:image withPerRowItemsCount:4 widthRatioToView:0.55 heightRatioToView:0.55 imageTopWithView:7 verticalMargin:4 horizontalMargin:0 verticalEdgeInset:3 horizontalEdgeInset:3];
    [btn setBtnClickBlock:^(NSInteger index) {
        switch (index) {
            case 0:
            {
                NSLog(@"点击第一个按键");
            }
                break;
            case 1:
            {
                NSLog(@"点击第二个按键");
            }
                break;
            case 2:
            {
                NSLog(@"点击第三个按键");
            }
                break;
            case 3:
            {
                NSLog(@"点击第四个按键");
            }
                break;
                
            default:
                break;
        }
    }];
    [self.view addSubview:btn];
}
- (void)setView2
{
    NSArray *title = @[@"医疗",@"寄养",@"宠物",@"美容"];
    NSArray *count = @[@"1",@"2",@"3",@"4"];
    //文字位置   设置在AutoLableView中
    DXLAutoButtonView *lb = [[DXLAutoButtonView alloc] initWithFrame:CGRectMake(0, 300, kWidth, 100) autoWidthFlowItems:title autolabelItem:count withPerRowItemsCount:4 widthRatioToView:0.5 heightRatioToView:0.6 imageTopWithView:0 verticalMargin:0 horizontalMargin:0 verticalEdgeInset:0.2 horizontalEdgeInset:0];
    lb.layer.borderColor = kColor_Gray.CGColor;
    lb.layer.borderWidth = 1.0f;
    lb.layer.cornerRadius = 10;
    lb.layer.masksToBounds = YES;
    lb.labelClickBlock = ^(NSInteger index){
        switch (index) {
            case 0:
            {
                NSLog(@"点击第一个按键");
            }
                break;
            case 1:
            {
                NSLog(@"点击第二个按键");
            }
                break;
            case 2:
            {
                NSLog(@"点击第三个按键");
            }
                break;
            case 3:
            {
                NSLog(@"点击第四个按键");
            }
                break;
                
            default:
                break;
        }
    };
    [self.view addSubview:lb];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
