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
#import "FHBpagination.h"


@interface ViewController ()

@property (nonatomic,strong) FHBsale_results *_results;



@end

@implementation ViewController{
    float reload_distance;
    NSInteger page;
    WebServices *services;
    BOOL isLoading;
}
@synthesize ads;
@synthesize tableView;
@synthesize _results;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	//init array to add ads
    ads = [[NSMutableArray alloc]init];
    [self setTableView];
    [self setTitle:@"Daft Pablo Demo"];
    
}


- (void) setTableView{
    [tableView registerNib:[UINib nibWithNibName:@"AdTableViewCell" bundle:nil ] forCellReuseIdentifier:@"AdTableViewCell"];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    page = 1;
    isLoading=YES;
    reload_distance = 10;
    [self setLoadingTableView];
}


-(void)viewDidAppear:(BOOL)animated{
    //call to download the data from daft.ie
    services = [[WebServices alloc] init];
    [services setDelegate:self];
    [services getListDaft:page];
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


- (void)scrollViewDidScroll:(UIScrollView *)aScrollView {
    CGPoint offset = aScrollView.contentOffset;
    CGRect bounds = aScrollView.bounds;
    CGSize size = aScrollView.contentSize;
    UIEdgeInsets inset = aScrollView.contentInset;
    float y = offset.y + bounds.size.height - inset.bottom;
    float h = size.height;
    
    //get the next page
    if(y > h + reload_distance && !isLoading && ![self isLastPage]) {
        [services getListDaft: [self nextPage]];
    }
}

- (void) setLoadingTableView{
    UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [spinner startAnimating];
    spinner.frame = CGRectMake(0, 0, 320, 44);
    tableView.tableFooterView = spinner;
}

-(void) removeLoadingTableView{
    tableView.tableFooterView = nil;
}


#pragma resultsSoapService

-(void)onResultsOK:(FHBsale_results *)resultAds{
    if(resultAds){
        [ads addObjectsFromArray:resultAds.ads];
        _results = resultAds;
        //reload data to show ads
        [tableView performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:YES];
        //remove loading if is the last page
        if([self isLastPage])
            [self removeLoadingTableView];
    }
    isLoading=NO;
}

-(void)onResultsError{
    isLoading = NO;
    [self removeLoadingTableView];
}


#pragma utils


-(BOOL) isLastPage{
    FHBpagination *pagination = _results.pagination;
    return pagination.num_pages == pagination.current_page;
}

- (NSInteger) currentPage{
    FHBpagination *pagination = _results.pagination;
    return [pagination.current_page integerValue];
}

- (NSInteger) nextPage{
    FHBpagination *pagination = _results.pagination;
    return [pagination.current_page integerValue]+1;
}


@end
