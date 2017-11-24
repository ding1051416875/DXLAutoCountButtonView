//
//  UIColor+Hex.m
//  LawyerSide
//
//  Created by apple on 16/6/28.
//  Copyright © 2016年 DingXiaoLei. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)
+ (UIColor *)colorWithHex:(NSInteger)hex
{
    float b = (hex&0xFF)/255.f;
    float g = ((hex>>8)&0xFF)/255.f;
    float r = ((hex >> 16) & 0xFF)/255.f;
    float a = hex > 0xFFFFFF ? ((hex>>24)&0xFF)/255.F:1.0;
    return [UIColor colorWithRed:r green:g blue:b alpha:a];
}
@end
