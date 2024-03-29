//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.2.1
//
// Created by Quasar Development at 03-05-2014
//
//---------------------------------------------------


#import "FHBHelper.h"
#import "FHBad_type.h"


@implementation FHBad_type
@synthesize name;
@synthesize desc;
@synthesize desc_plural;
@synthesize desc_short;

+ (FHBad_type *)createWithXml:(DDXMLElement *)__node __request:(FHBRequestResultHandler*) __request
{
    if(__node == nil) { return nil; }
    return [[self alloc] initWithXml: __node __request:__request];
}

-(id)init {
    if ((self=[super init])) {
    }
    return self;
}

- (id) initWithXml: (DDXMLElement*) __node __request:(FHBRequestResultHandler*) __request{
    if(self = [self init])
    {
        if([FHBHelper hasValue:__node name:@"name" index:0])
        {
            self.name = [[FHBHelper getNode:__node name:@"name" index:0] stringValue];
        }
        if([FHBHelper hasValue:__node name:@"desc" index:0])
        {
            self.desc = [[FHBHelper getNode:__node name:@"desc" index:0] stringValue];
        }
        if([FHBHelper hasValue:__node name:@"desc_plural" index:0])
        {
            self.desc_plural = [[FHBHelper getNode:__node name:@"desc_plural" index:0] stringValue];
        }
        if([FHBHelper hasValue:__node name:@"desc_short" index:0])
        {
            self.desc_short = [[FHBHelper getNode:__node name:@"desc_short" index:0] stringValue];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(FHBRequestResultHandler*) __request
{

             
        DDXMLElement* __nameItemElement=[__request writeElement:name type:[NSString class] name:@"name" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__nameItemElement!=nil)
        {
            [__nameItemElement setStringValue:self.name];
        }
             
        DDXMLElement* __descItemElement=[__request writeElement:desc type:[NSString class] name:@"desc" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__descItemElement!=nil)
        {
            [__descItemElement setStringValue:self.desc];
        }
             
        DDXMLElement* __desc_pluralItemElement=[__request writeElement:desc_plural type:[NSString class] name:@"desc_plural" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__desc_pluralItemElement!=nil)
        {
            [__desc_pluralItemElement setStringValue:self.desc_plural];
        }
             
        DDXMLElement* __desc_shortItemElement=[__request writeElement:desc_short type:[NSString class] name:@"desc_short" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__desc_shortItemElement!=nil)
        {
            [__desc_shortItemElement setStringValue:self.desc_short];
        }


}
@end
