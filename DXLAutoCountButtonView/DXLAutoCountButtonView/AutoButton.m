//
//  AutoButton.m
//  JPet
//
//  Created by apple on 2017/5/14.
//  Copyright © 2017年 DingXiaoLei. All rights reserved.
//

#import "AutoButton.h"

@implementation AutoButton

- (void)setImage:(NSString *)image
{
    _image = image;
}
- (void)setTitle:(NSString *)title
{
    _title = title;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    [self setTitle:_title forState:UIControlStateNormal];
    [self setTitleColor:[UIColor blackColor ]forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:_image] forState:UIControlStateNormal];
    [self.titleLabel setTextAlignment:NSTextAlignmentCenter];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.adjustsFontSizeToFitWidth = YES;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
 
    

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
