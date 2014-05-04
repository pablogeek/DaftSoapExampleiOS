//
//  ViewController.h
//  daft
//
//  Created by Pablo Martinez on 03/05/14.
//  Copyright (c) 2014 pablosoftware. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebServices.h"

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate,ServiceDelegate>

@property (nonatomic,strong) NSMutableArray *ads;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end
