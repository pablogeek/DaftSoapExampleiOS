//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.2.1
//
// Created by Quasar Development at 03-05-2014
//
//---------------------------------------------------


#import <Foundation/Foundation.h>

#import "FHBRequestResultHandler.h"
#import "DDXML.h"



@interface FHBproperty_type : NSObject 


@property (retain,nonatomic,getter=getName) NSString* name;

@property (retain,nonatomic,getter=getPlural) NSString* plural;

@property (retain,nonatomic,getter=get_short) NSString* _short;

@property (retain,nonatomic,getter=getShort_plural) NSString* short_plural;

@property (retain,nonatomic,getter=getKey) NSString* key;
-(id)init;
-(id)initWithXml: (DDXMLElement*)__node __request:(FHBRequestResultHandler*) __request;
+(FHBproperty_type*) createWithXml:(DDXMLElement*)__node __request:(FHBRequestResultHandler*) __request;
-(void) serialize:(DDXMLElement*)__parent __request:(FHBRequestResultHandler*) __request;
@end