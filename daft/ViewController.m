//
//  ViewController.m
//  daft
//
//  Created by Pablo Martinez on 03/05/14.
//  Copyright (c) 2014 pablosoftware. All rights reserved.
//

#import "ViewController.h"
#import "FHBsale_ad.h"
#import "AdTableViewCell.h"


@interface ViewController ()

@property (nonatomic,strong) FHBsale_results *_results;


@end

@implementation ViewController
@synthesize ads;
@synthesize tableView;
@synthesize _results:

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	//init array to add ads
    ads = [[NSMutableArray alloc]init];
    [self setTableView];
    
}


- (void) setTableView{
    [tableView registerNib:[UINib nibWithNibName:@"AdTableViewCell" bundle:nil ] forCellReuseIdentifier:@"AdTableViewCell"];
    tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
}


-(void)viewDidAppear:(BOOL)animated{
    //call to download the data from daft.ie
    WebServices *services = [[WebServices alloc] init];
    [services setDelegate:self];
    [services getListDaft];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma tableview

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return ads.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 64.0f;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //get ad from array
    FHBsale_ad *ad = ads[indexPath.row];
    
    AdTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AdTableViewCell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[AdTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                        reuseIdentifier:@"AdTableViewCell"];
    }
    
    //set information in each cell
    [cell setAdInformationCell:ad];
    
    
    return cell;
}

#pragma resultsSoapService

-(void)onResultsOK:(FHBsale_results *)resultAds{
    [ads addObjectsFromArray:resultAds.ads];
    _results = resultAds;
    //reload data to show ads
    [tableView performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:YES];
}

-(void)onResultsError{
    
}


@end
