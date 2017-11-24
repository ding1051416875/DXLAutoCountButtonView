//
//  AutoLableView.m
//  JPet
//
//  Created by apple on 2017/5/24.
//  Copyright © 2017年 DingXiaoLei. All rights reserved.
//

#import "AutoLableView.h"

@implementation AutoLableView
{
//    UIButton *_btn;
    UILabel *_titlelb;
    UILabel *_countlb;
}
- (void)setTitle:(NSString *)title
{
    _title = title;
    _titlelb.text = title;
}
- (void)setCount:(NSString *)count
{
    _count = count;
    _countlb.text = count;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
       
        
        _titlelb = [UILabel new];
        _titlelb.textColor = kColor_BlackTitle;
        _titlelb.textAlignment = NSTextAlignmentCenter;
        _titlelb.font = kFont_Lable_14;
        [self addSubview:_titlelb];
        _countlb = [UILabel new];
        _countlb.textColor = kColor_BlackTitle;
        _countlb.textAlignment = NSTextAlignmentCenter;
        _countlb.font = kFont_Lable_14;
        [self addSubview:_countlb];

        
        _titlelb.sd_layout
        .widthRatioToView(self, 0.8)
        .centerXEqualToView(self)
        .topSpaceToView(self, 5)
        .heightRatioToView(self, 0.5);
        
        _countlb.sd_layout
        .topSpaceToView(_titlelb, 0)
        .leftEqualToView(_titlelb)
        .rightEqualToView(_titlelb)
        .bottomSpaceToView(self, 5);
        
   
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
