//
//  WebServices.m
//  daft
//
//  Created by Pablo Martinez on 03/05/14.
//  Copyright (c) 2014 pablosoftware. All rights reserved.
//

#import "WebServices.h"
#import "AFHTTPRequestOperation.h"
#import "FHBDaftAPIServiceBinding.h"
#import "FHBsearch_query.h"
#import "Constants.h"
#import "FHBRequestResultHandler.h"

@implementation WebServices

@synthesize delegate;

- (void) getListDaft : (NSInteger) page{
    FHBsearch_query *query = [[FHBsearch_query alloc] init];
    [query setPage:[NSNumber numberWithInteger:page]];
    [query setPerpage:[NSNumber numberWithInt:DAFT_API_PER_PAGE]];
    FHBDaftAPIServiceBinding *service = [[FHBDaftAPIServiceBinding alloc] init];
    [service search_saleAsync:DAFT_API_KEY query:query __target:self];
    
}

- (void)onSuccess:(id)value{
    FHBsale_results *results = value;
    [delegate onResultsOK:results];
}

-(void)onError:(NSError *)error{
    [delegate onResultsError];
}

@end
