//
//  DXLAutoButtonView.h
//  JPet
//
//  Created by apple on 2017/5/14.
//  Copyright © 2017年 DingXiaoLei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AutoButton.h"
#import "AutoLableView.h"
@interface DXLAutoButtonView : UIView

@property (nonatomic,copy) void (^btnClickBlock)(NSInteger index);
@property (nonatomic,copy) void (^labelClickBlock)(NSInteger index);

@property (nonatomic,strong) AutoButton *autoButton;
@property (nonatomic,strong) AutoLableView *autoLableView;

/**
 * 上面图片下面文字
 * 设置类似collectionView效果的固定间距自动宽度浮动子button
 * viewsArray       : 需要浮动布局的所有视图
 * imageArray       : 图片视图
 * perRowItemsCount : 每行显示的视图个数
 * widthRatioToView : 图片宽度占视图的比例
 * heightRatioToView : 图片高度占视图的比例
 * imageTopWithView  : 图片距离视图上部的距离
 * verticalMargin   : 视图之间的垂直间距
 * horizontalMargin : 视图之间的水平间距
 * vInset           : 上下缩进值
 * hInset           : 左右缩进值
 */

- (instancetype)initWithFrame:(CGRect)frame autoWidthFlowItems:(NSArray *)viewsArray autoImageItem:(NSArray *)imageArray withPerRowItemsCount:(NSInteger)perRowItemsCount widthRatioToView:(CGFloat)widthRatioToView heightRatioToView:(CGFloat)heightRatioToView imageTopWithView:(CGFloat)imageTopWithView verticalMargin:(CGFloat)verticalMargin horizontalMargin:(CGFloat)horizontalMagin verticalEdgeInset:(CGFloat)vInset horizontalEdgeInset:(CGFloat)hInset;


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
- (instancetype)initWithFrame:(CGRect)frame autoWidthFlowItems:(NSArray *)viewsArray autolabelItem:(NSArray *)labelArray withPerRowItemsCount:(NSInteger)perRowItemsCount widthRatioToView:(CGFloat)widthRatioToView heightRatioToView:(CGFloat)heightRatioToView imageTopWithView:(CGFloat)imageTopWithView verticalMargin:(CGFloat)verticalMargin horizontalMargin:(CGFloat)horizontalMagin verticalEdgeInset:(CGFloat)vInset horizontalEdgeInset:(CGFloat)hInset;
@end
