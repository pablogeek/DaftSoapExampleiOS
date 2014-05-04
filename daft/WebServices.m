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
#import "FHBRequestResultHandler.h"

@implementation WebServices

@synthesize delegate;

- (void) getListDaft : (NSInteger) page{
    FHBsearch_query *query = [[FHBsearch_query alloc] init];
    [query setValue:[NSString stringWithFormat:@"%d",page] forKey:@"page"];
    FHBDaftAPIServiceBinding *service = [[FHBDaftAPIServiceBinding alloc] init];
    [service search_saleAsync:@"7bcfbb1694fe2ef5903550d34e36981c3b170c13" query:query __target:self];
    
}

- (void)onSuccess:(id)value{
    FHBsale_results *results = value;
    [delegate onResultsOK:results];
}

-(void)onError:(NSError *)error{
    [delegate onResultsError];
}

@end
