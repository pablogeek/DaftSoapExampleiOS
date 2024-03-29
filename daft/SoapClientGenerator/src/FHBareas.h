//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.2.1
//
// Created by Quasar Development at 03-05-2014
//
//---------------------------------------------------


#import <Foundation/Foundation.h>

@class FHBHelper;
#import "FHBRequestResultHandler.h"
#import "DDXML.h"



@interface FHBareas : NSObject 


@property (retain,nonatomic,getter=getApi_key) NSString* api_key;

@property (retain,nonatomic,getter=getArea_type) NSString* area_type;

@property (retain,nonatomic,getter=getAd_type) NSString* ad_type;

@property (retain,nonatomic,getter=getCounty) NSMutableArray* county;

@property (retain,nonatomic,getter=getCity) NSMutableArray* city;

@property (retain,nonatomic,getter=getGeneral) NSMutableArray* general;

@property (retain,nonatomic,getter=getInclude_empty) NSNumber* include_empty;
-(id)init;
-(id)initWithXml: (DDXMLElement*)__node __request:(FHBRequestResultHandler*) __request;
+(FHBareas*) createWithXml:(DDXMLElement*)__node __request:(FHBRequestResultHandler*) __request;
-(void) serialize:(DDXMLElement*)__parent __request:(FHBRequestResultHandler*) __request;
@end