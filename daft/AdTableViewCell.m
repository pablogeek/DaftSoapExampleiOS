//
//  AdTableViewCell.m
//  daft
//
//  Created by Pablo Martinez on 03/05/14.
//  Copyright (c) 2014 pablosoftware. All rights reserved.
//

#import "AdTableViewCell.h"
#import "UIImageView+AFNetworking.h"

@implementation AdTableViewCell
@synthesize lblTitleCell;
@synthesize imgCell;
@synthesize lblPriceCell;

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setAdInformationCell:(FHBsale_ad *)ad{
    
    [lblTitleCell setText:ad.getFull_address];
    [imgCell setImageWithURL:[NSURL URLWithString:ad.small_thumbnail_url]];
    [lblPriceCell setText:[NSString stringWithFormat:@"%@%@",[ad getPrice],@" €"]];
}




@end
