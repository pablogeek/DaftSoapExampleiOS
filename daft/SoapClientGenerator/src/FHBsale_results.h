//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.2.1
//
// Created by Quasar Development at 03-05-2014
//
//---------------------------------------------------


#import <Foundation/Foundation.h>

@class FHBpagination;
@class FHBsale_ad;
#import "FHBRequestResultHandler.h"
#import "DDXML.h"



@interface FHBsale_results : NSObject 


@property (retain,nonatomic,getter=getSearch_sentence) NSString* search_sentence;

@property (retain,nonatomic,getter=getPagination) FHBpagination* pagination;

@property (retain,nonatomic,getter=getAds) NSMutableArray* ads;
-(id)init;
-(id)initWithXml: (DDXMLElement*)__node __request:(FHBRequestResultHandler*) __request;
+(FHBsale_results*) createWithXml:(DDXMLElement*)__node __request:(FHBRequestResultHandler*) __request;
-(void) serialize:(DDXMLElement*)__parent __request:(FHBRequestResultHandler*) __request;
@end