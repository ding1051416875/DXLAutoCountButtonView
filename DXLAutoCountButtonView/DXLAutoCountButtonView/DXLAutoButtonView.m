//
//  DXLAutoButtonView.m
//  JPet
//
//  Created by apple on 2017/5/14.
//  Copyright © 2017年 DingXiaoLei. All rights reserved.
//

#import "DXLAutoButtonView.h"
#import "AutoButton.h"
#import "AutoLableView.h"
#import "SDAutoLayout.h"
/**屏幕尺寸-宽度*/
#define kWidths ([UIScreen mainScreen].bounds.size.width)
/**屏幕尺寸-高度*/
#define kHeights ([UIScreen mainScreen].bounds.size.height)
@implementation DXLAutoButtonView

/**
 * 上面图片下面文字
 * 设置类似collectionView效果的固定间距自动宽度浮动子button
 * viewsArray       : 需要浮动布局的所有视图
 * imageArray       : 图片视图
 * widthRatioToView : 图片宽度占视图的比例
 * heightRatioToView : 图片高度占视图的比例
 * imageTopWithView  : 图片距离视图上部的距离
 * perRowItemsCount : 每行显示的视图个数
 * verticalMargin   : 视图之间的垂直间距
 * horizontalMargin : 视图之间的水平间距
 * vInset           : 上下缩进值
 * hInset           : 左右缩进值
 */
- (instancetype)initWithFrame:(CGRect)frame autoWidthFlowItems:(NSArray *)viewsArray autoImageItem:(NSArray *)imageArray withPerRowItemsCount:(NSInteger)perRowItemsCount widthRatioToView:(CGFloat)widthRatioToView heightRatioToView:(CGFloat)heightRatioToView imageTopWithView:(CGFloat)imageTopWithView verticalMargin:(CGFloat)verticalMargin horizontalMargin:(CGFloat)horizontalMagin verticalEdgeInset:(CGFloat)vInset horizontalEdgeInset:(CGFloat)hInset
{
    if(self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor whiteColor];
        NSMutableArray *temp = [NSMutableArray new];
        for(int i=0;i<viewsArray.count;i++)
        {
            //按钮视图
            AutoButton *btn = [AutoButton new];
            //按钮文字
            btn.title = viewsArray[i];
            //按钮图片
            btn.image = imageArray[i];
            [self addSubview:btn];
            [btn addTarget:self action:@selector(btnClickBlock:) forControlEvents:UIControlEventTouchUpInside];
            btn.sd_layout.heightIs(self.frame.size.height);
            [temp addObject:btn];
            btn.tag = i;
            //设置按钮的图片位置
            btn.imageView.sd_layout
            .widthRatioToView(btn, widthRatioToView)
            .centerXEqualToView(btn)
            .topSpaceToView(btn, imageTopWithView)
            .heightRatioToView(btn, heightRatioToView);
            //设置按钮的文字位置
            btn.titleLabel.sd_layout
            .autoHeightRatio(0)
            .leftSpaceToView(btn, 0)
            .rightSpaceToView(btn, 0)
            .bottomSpaceToView(btn, verticalMargin);
        }
        
        /**
         * 设置类似collectionView效果的固定间距自动宽度浮动子view
         * viewsArray       : 需要浮动布局的所有视图
         * perRowItemsCount : 每行显示的视图个数
         * verticalMargin   : 视图之间的垂直间距
         * horizontalMargin : 视图之间的水平间距
         * vInset           : 上下缩进值
         * hInset           : 左右缩进值
         */
        [self setupAutoWidthFlowItems:[temp copy] withPerRowItemsCount:viewsArray.count verticalMargin:verticalMargin horizontalMargin:horizontalMagin verticalEdgeInset:vInset horizontalEdgeInset:hInset];
        
    }
    return self;
}
- (void)btnClickBlock:(UIButton *)sender
{
    if (self.btnClickBlock) {
        self.btnClickBlock(sender.tag);
    }
}

/**  上下都是文字
 * 设置类似collectionView效果的固定间距自动宽度浮动子button
 * viewsArray       : 需要浮动布局的所有视图
 * imageArray       : 图片视图
 * widthRatioToView : 图片宽度占视图的比例
 * heightRatioToView : 图片高度占视图的比例
 * imageTopWithView  : 图片距离视图上部的距离
 * perRowItemsCount : 每行显示的视图个数
 * verticalMargin   : 视图之间的垂直间距
 * horizontalMargin : 视图之间的水平间距
 * vInset           : 上下缩进值
 * hInset           : 左右缩进值
 */
- (instancetype)initWithFrame:(CGRect)frame autoWidthFlowItems:(NSArray *)viewsArray autolabelItem:(NSArray *)labelArray withPerRowItemsCount:(NSInteger)perRowItemsCount widthRatioToView:(CGFloat)widthRatioToView heightRatioToView:(CGFloat)heightRatioToView imageTopWithView:(CGFloat)imageTopWithView verticalMargin:(CGFloat)verticalMargin horizontalMargin:(CGFloat)horizontalMagin verticalEdgeInset:(CGFloat)vInset horizontalEdgeInset:(CGFloat)hInset
{
    if(self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor whiteColor];
        NSMutableArray *temp = [NSMutableArray new];
        for(int i=0;i<viewsArray.count;i++)
        {
            AutoLableView *lb = [AutoLableView new];
            _autoLableView = lb;
            lb.title = viewsArray[i];
            lb.count = labelArray[i];
            [self addSubview:lb];
            lb.sd_layout.heightIs(self.frame.size.height);
            lb.tag = i;
            [temp addObject:lb];
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
            [tap addTarget:self action:@selector(labelClick:)];
            [lb addGestureRecognizer:tap];
        }
        [self setupAutoWidthFlowItems:[temp copy] withPerRowItemsCount:viewsArray.count verticalMargin:verticalMargin horizontalMargin:horizontalMagin verticalEdgeInset:vInset horizontalEdgeInset:hInset];
        
    }
    return self;
}
- (void)labelClick:(UITapGestureRecognizer *)tap
{
    if (self.labelClickBlock) {
        self.labelClickBlock(tap.view.tag);
    }

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
