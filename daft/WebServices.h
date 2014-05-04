//
//  WebServices.h
//  daft
//
//  Created by Pablo Martinez on 03/05/14.
//  Copyright (c) 2014 pablosoftware. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FHBRequestResultHandler.h"
#import "FHBDaftAPIServiceBinding.h"


@protocol ServiceDelegate <NSObject>

- (void) onResultsOK:(FHBsale_results *)resultAds;

- (void) onResultsError;

@end


@interface WebServices : NSObject <FHBSoapServiceResponse>

@property (nonatomic,strong) NSObject<ServiceDelegate> *delegate;

- (void) getListDaft;

@end
