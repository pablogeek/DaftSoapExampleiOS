//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.2.1
//
// Created by Quasar Development at 03-05-2014
//
//---------------------------------------------------


#import "FHBSoapError.h"

@implementation FHBSoapError
@synthesize Details;

-(id)initWithDetails:(NSString*) faultString details:(id)details;
{
    if(self = [self initWithDomain:faultString code:0 userInfo:nil])
    {
        self.Details=details;
        
    }
    return self;
}
@end