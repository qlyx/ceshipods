//
//  MainViewNavigitionView.m
//  douyin
//
//  Created by 澜海利奥 on 2018/4/12.
//  Copyright © 2018年 江萧. All rights reserved.
//

#import "MainViewNavigitionView.h"

@implementation MainViewNavigitionView
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
       //中间小白线
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = [UIColor blackColor];
        [self addSubview:line];
       
       
    }
    return self;
}
-(void)selectButton:(UIButton *)button
{
    [self resetButton:button.tag == 1?_nearButton:_recommendButton];
    [self chooseButton:button.tag == 1?_recommendButton:_nearButton];
}
//恢复初始状态
-(void)resetButton:(UIButton *)button
{
    button.selected = NO;
    button.titleLabel.font = [UIFont systemFontOfSize:16];
}
//选中按钮
-(void)chooseButton:(UIButton *)button
{
    button.selected = YES;
    button.titleLabel.font = [UIFont boldSystemFontOfSize:18];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
