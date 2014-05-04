//
//  AdTableViewCell.h
//  daft
//
//  Created by Pablo Martinez on 03/05/14.
//  Copyright (c) 2014 pablosoftware. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FHBsale_ad.h"

@interface AdTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblTitleCell;
@property (weak, nonatomic) IBOutlet UILabel *lblPriceCell;
@property (weak, nonatomic) IBOutlet UIImageView *imgCell;


- (void) setAdInformationCell: (FHBsale_ad *) ad;


@end
