//
//  DBServiceTableViewCell.m
//  GJCAR.COM
//
//  Created by 段博 on 2017/7/18.
//  Copyright © 2017年 DuanBo. All rights reserved.
//

#import "DBServiceTableViewCell.h"

@implementation DBServiceTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        [self createView];
    }
    self.backgroundColor = [UIColor whiteColor] ;
    self.selectedBackgroundView = [[UIView alloc] initWithFrame:self.frame];
    self.selectedBackgroundView.backgroundColor = [UIColor whiteColor];
    return self;
}

-(void)createView
{
    //门店名
    _storeName  = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, self.frame.size.width - 10 , 40)];
    _storeName.text = @"门店" ;
    _storeName.font = [UIFont systemFontOfSize:12];
    _storeName.adjustsFontSizeToFitWidth = YES ;
    [self addSubview:_storeName];
    
    //    //门店地址
    //    _storeAddr = [[UILabel alloc]initWithFrame:CGRectMake(20, 25, ScreenWidth  - 20, 20)];
    //
    //    _storeAddr.font = [UIFont systemFontOfSize:12];
    //    _storeAddr.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1]  ;
    //    [self addSubview:_storeAddr];
    
    UIImageView * locationImage = [[UIImageView alloc]initWithFrame:CGRectMake(ScreenWidth   - 26 , 15, 6, 11)];
    locationImage.image = [UIImage imageNamed:@"next"];
    [self addSubview:locationImage];
    
    UIView * lineView =  [[UIView alloc]initWithFrame:CGRectMake(0, 39.5, ScreenWidth ,0.5)];
    lineView.backgroundColor =  [UIColor colorWithRed:0.90 green:0.90 blue:0.90 alpha:1] ;
    [self addSubview:lineView];
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
    // Configure the view for the selected state
}

@end
